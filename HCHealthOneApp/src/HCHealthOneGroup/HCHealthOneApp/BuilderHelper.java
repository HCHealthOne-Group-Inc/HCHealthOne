package HCHealthOneGroup.HCHealthOneApp;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import HCHealthOneGroup.HCHealthOneApp.Domain.AgeRule;
import HCHealthOneGroup.HCHealthOneApp.Domain.Benefit;
import HCHealthOneGroup.HCHealthOneApp.Domain.DiscountType;
import HCHealthOneGroup.HCHealthOneApp.Domain.FoodStampRule;
import HCHealthOneGroup.HCHealthOneApp.Domain.InsurancePlan;
import HCHealthOneGroup.HCHealthOneApp.Domain.LabService;
import HCHealthOneGroup.HCHealthOneApp.Domain.LocalizationRule;
import HCHealthOneGroup.HCHealthOneApp.Domain.MedicationFormulary;
import HCHealthOneGroup.HCHealthOneApp.Domain.PCPVisit;
import HCHealthOneGroup.HCHealthOneApp.Domain.Rule;
import HCHealthOneGroup.HCHealthOneApp.Domain.Transportation;

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
		benefits.add(aPCPVisitBenefitLevel1);

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

		FoodStampRule foodStampRule = new FoodStampRule("Food Stamp Level 1", 100);
		rules.add(foodStampRule);

		return rules;
	}

	public static InsurancePlan GetLevelInsurance(int level) {

		List<Benefit> allBenefits = GetBenefits();
		List<Rule> allRules = GetRules();
		
		String levelStr = "Level " + String.valueOf(level);

		List<Benefit> level1Benefits = allBenefits.stream().filter(p -> p.name.contains(levelStr)).toList();
		List<Rule> level1Rules = allRules.stream().filter(p -> p.getName().contains(levelStr)).toList();

		InsurancePlan insurancePlan = new InsurancePlan("Insurance Level 1", "COM", "Private", allRules, allBenefits);

		return insurancePlan;
	}

}
