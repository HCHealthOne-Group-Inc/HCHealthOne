package HCHealthOneGroup.HCHealthOneApp;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import HCHealthOneGroup.HCHealthOneApp.Domain.AgeRule;
import HCHealthOneGroup.HCHealthOneApp.Domain.Benefit;
import HCHealthOneGroup.HCHealthOneApp.Domain.DiscountType;
import HCHealthOneGroup.HCHealthOneApp.Domain.FoodStampRule;
import HCHealthOneGroup.HCHealthOneApp.Domain.InsurancePlan;
import HCHealthOneGroup.HCHealthOneApp.Domain.LabService;
import HCHealthOneGroup.HCHealthOneApp.Domain.LocalizationRule;
import HCHealthOneGroup.HCHealthOneApp.Domain.MedicationFormulary;
import HCHealthOneGroup.HCHealthOneApp.Domain.PCPVisit;
import HCHealthOneGroup.HCHealthOneApp.Domain.Provider;
import HCHealthOneGroup.HCHealthOneApp.Domain.Rule;
import HCHealthOneGroup.HCHealthOneApp.Domain.Transportation;

/**
 * Class to help build test data
 * 
 * @author xmachin
 *
 */
public class BuilderHelper {

	private static List<Benefit> GetBenefits() {

		List<Benefit> benefits = new ArrayList<Benefit>();

		Transportation aTransportationBenefit = new Transportation("Transport Level 1", 50, DiscountType.Nominal,
				LocalDate.of(2021, 1, 1), LocalDate.of(2022, 12, 31), 50);
		benefits.add(aTransportationBenefit);

		MedicationFormulary aMedicationBenefitLevel1 = new MedicationFormulary("Rx Level 1", 90,
				DiscountType.Percentage, "drug11,drug12,drug13");
		benefits.add(aMedicationBenefitLevel1);

		MedicationFormulary aMedicationBenefitLevel2 = new MedicationFormulary("Rx Level 2", 50,
				DiscountType.Percentage, "drug21,drug22,drug23");
		benefits.add(aMedicationBenefitLevel2);

		MedicationFormulary aMedicationBenefitLevel3 = new MedicationFormulary("Rx Level 3", 10,
				DiscountType.Percentage, "drug31,drug32,drug33");
		benefits.add(aMedicationBenefitLevel3);

		LabService aLabServiceBenefitLevel1 = new LabService("Lab Level 1", 90, DiscountType.Percentage,
				LocalDate.of(2021, 1, 1), LocalDate.of(2022, 12, 31), "LOINC11,LOINC12,LOINC13");
		benefits.add(aLabServiceBenefitLevel1);

		LabService aLabServiceBenefitLevel2 = new LabService("Lab Level 2", 50, DiscountType.Percentage,
				LocalDate.of(2021, 1, 1), LocalDate.of(2022, 12, 31), "LOINC21,LOINC22,LOINC23");
		benefits.add(aLabServiceBenefitLevel2);

		LabService aLabServiceBenefitLevel3 = new LabService("Lab Level 3", 20, DiscountType.Percentage,
				LocalDate.of(2021, 1, 1), LocalDate.of(2022, 12, 31), "LOINC31,LOINC32,LOINC32");
		benefits.add(aLabServiceBenefitLevel3);

		PCPVisit aPCPVisitBenefitLevel1 = new PCPVisit("PCP Visit Level 1", 100, DiscountType.Percentage,
				LocalDate.of(2021, 1, 1), LocalDate.of(2022, 12, 31), "Specialty1");
		benefits.add(aPCPVisitBenefitLevel1);

		PCPVisit aPCPVisitBenefitLevel2 = new PCPVisit("PCP Visit Level 2", 50, DiscountType.Percentage,
				LocalDate.of(2021, 1, 1), LocalDate.of(2022, 12, 31), "Specialty2");
		benefits.add(aPCPVisitBenefitLevel2);

		PCPVisit aPCPVisitBenefitLevel3 = new PCPVisit("PCP Visit Level 3", 20, DiscountType.Percentage,
				LocalDate.of(2021, 1, 1), LocalDate.of(2022, 12, 31), "Specialty2");
		benefits.add(aPCPVisitBenefitLevel3);

		return benefits;
	}

	private static List<Rule> GetRules() {
		List<Rule> rules = new ArrayList<Rule>();

		AgeRule aAgeRule65Older = new AgeRule("Age Level 1", 65, 900);
		rules.add(aAgeRule65Older);

		AgeRule aAgeRuleAdults = new AgeRule("Age Level 2", 18, 64);
		rules.add(aAgeRuleAdults);

		AgeRule aAgeRuleKids = new AgeRule("Age Level 3", 0, 17);
		rules.add(aAgeRuleKids);

		LocalizationRule sweetwaterLocalizationRule = new LocalizationRule("Sweetwater Level 1", "33175");
		rules.add(sweetwaterLocalizationRule);

		LocalizationRule doralLocalizationRule = new LocalizationRule("Doral Level 2", "33174");
		rules.add(doralLocalizationRule);

		LocalizationRule westchesterLocalizationRule = new LocalizationRule("Westchester Level 3", "33165");
		rules.add(westchesterLocalizationRule);

		FoodStampRule foodStampRule = new FoodStampRule("Food Stamp Level 1", 10000);
		rules.add(foodStampRule);

		return rules;
	}

	public static InsurancePlan GetLevelInsurance(int level) {

		List<Benefit> allBenefits = GetBenefits();
		List<Rule> allRules = GetRules();

		String levelStr = "Level " + String.valueOf(level);

		List<Benefit> calculatedLevelBenefits = allBenefits.stream().filter(p -> p.name.contains(levelStr)).toList();
		List<Rule> calculatedRules = allRules.stream().filter(p -> p.getName().contains(levelStr)).toList();

		InsurancePlan insurancePlan = new InsurancePlan(
				getAlphaNumericString(3) + " Insurance Level " + String.valueOf(level), "COM", "Private",
				calculatedRules, calculatedLevelBenefits);

		return insurancePlan;
	}

	/**
	 * Gets a list of plans based on predefined parameters
	 * 
	 * @param size
	 * @return
	 */
	public static List<InsurancePlan> GetInsurancePlanList(int size) {

		List<InsurancePlan> plans = new ArrayList<InsurancePlan>();
		List<Provider> providers = GetProviders(size);

		for (int i = 1; i <= size; ++i) {
			int level = (new Random()).nextInt(1, 4);
			InsurancePlan plan = GetLevelInsurance(level);
			plan.CredentialProviders(providers);
			plans.add(plan);
		}

		return plans;
	}

	public static String getAlphaNumericString(int n) {
		String AlphaNumericString = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
		StringBuilder sb = new StringBuilder(n);

		for (int i = 0; i < n; i++) {
			int index = (int) (AlphaNumericString.length() * Math.random());
			sb.append(AlphaNumericString.charAt(index));
		}

		return sb.toString();
	}

	/**
	 * Get a list of n providers
	 * 
	 * @param n
	 * @return
	 */
	public static List<Provider> GetProviders(int n) {

		List<Provider> providers = new ArrayList<Provider>();

		for (int i = 0; i < n; i++) {
			providers.add(GetProvider());
		}

		return providers;
	}

	public static Provider GetProvider() {
		Provider provider = new Provider("LastName_" + getAlphaNumericString(3),
				"FirstName_" + getAlphaNumericString(3),
				LocalDate.of(1980,1,1),
				getAlphaNumericString(10));
		//LocalDate.of(LocalDate.now().getYear() - (new Random()).nextInt(30, 50), 1, 1)
		return provider;
	}
}
