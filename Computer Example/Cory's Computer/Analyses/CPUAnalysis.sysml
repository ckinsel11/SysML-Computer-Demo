package 'CPU Decision'{
    private import 'CPU Catalog'::*;
    private import TradeStudies::*;

    analysis 'CPU Analysis' : TradeStudy {
        doc /* This case is meant to capture the decision-making process for the CPU. This will be used to evaluate different CPU options
        * and select the most suitable one based on the specified criteria.*/

        /* Step 1: Identify requirements and assumptions */

        /* Step 2: Identify alternatives under consideration */
        part AMD1 : AMD::'Ryzen 7 9800 X3D';
        part AMD2 : AMD::'Ryzen 7 9850 X3D';
        part Intel1 : Intel::'Core i7-14700K';
        subject CPUAlt = (AMD1, AMD2, Intel1); /* These need to be usages not definitions. */

        /* Step 3: Identify evaluation criteria */

        /* Step 4: Weight selection criteria */
        objective : MaximizeObjective; /* Objective of the evaluation function. Either Maximize or Minimize the value. */

        /* Step 5: Define criteria scoring scale */

        /* Step 6: Conduct evaluation of alternatives */

        /* Step 7: Record results */
    }
}