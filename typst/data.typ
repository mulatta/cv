// CV Data - Seungwon Lee
// All content is defined here; rendering is handled by section files.

#let cv = (
  name: "Seungwon Lee",
  department: "Department of Bioengineering",
  affiliation: "Incheon National University College of Life Science & Bioengineering",
  address: "Incheon 22012, Korea",
  email: "seungwon@mulatta.io",
  website: "https://mulatta.io",
  github: "https://github.com/mulatta",

  education: (
    (
      institution: "Incheon National University",
      location: "Incheon, Korea",
      position: "Undergraduate Student",
      date: "Mar. 2019 – Feb. 2025",
      description: (
        "Major in Bioengineering, College of Life Science & Bioengineering",
        "Minor in Computer Science Engineering, College of Information Technology",
        "GPA: 4.17/4.5 (Major: 4.13/4.5, Minor: 4.33/4.5)",
      ),
    ),
    (
      institution: "Incheon National University",
      location: "Incheon, Korea",
      position: "Graduate Student",
      date: "Aug. 2025 – Present (Expected Aug. 2026)",
      description: (
        "Department of Bioengineering and Nano-Bioengineering",
      ),
    ),
  ),

  research-interest: (
    "Synthetic Biology – Genome editing tool development (prime editing, base editing), ncRNA-based gene regulation",
    "Computational Biology – AI-driven protein and RNA engineering, biomolecular structure prediction, NGS data analysis pipeline development",
  ),

  research-experience: (
    (
      lab: "SBEE Lab (Synthetic Biology and Evolutionary Bioengineering)",
      location: "Incheon, Korea",
      institution: "Incheon National University",
      positions: (
        (
          title: "Undergraduate Research Intern (Advisor: Sungho Jang, Ph.D.)",
          date: "Dec. 2022 – Feb. 2025",
        ),
        (title: "Combined B.S./M.S. Student", date: "Aug. 2025 – Present"),
      ),
      projects: (
        (
          name: "Development of Inducible RNA Regulator",
          description: "Developed inducible RNA regulators targeting buspirone and pioglitazone via RNA Capture-SELEX, from experimental design through selection to NGS-based candidate analysis (fastp, Nextflow, AptaTrace, NUPACK).",
        ),
        (
          name: "Protein Engineering via Directed Evolution",
          description: "Applying EvolvePro (PLM-based active learning) for activity optimization of BenM and TphR transcription factors.",
        ),
      ),
    ),
  ),

  experience: (
    (
      title: "National Undergraduate Symposium on Biology (61st–63rd)",
      location: "Seoul, Korea",
      institution: "Seoul National University",
      position: "Participant (61st, 2022); Team Leader (62nd, 2023); Organizer & Chair (63rd, 2024)",
      date: "June 2022 – Sep. 2024",
    ),
    (
      title: "BINU (Bioinformatics INU) Study Group",
      location: "Incheon, Korea",
      institution: "Incheon National University",
      position: "Group Leader",
      date: "Mar. 2023 – Aug. 2024",
      description: (
        "Led weekly study sessions on linear algebra and AI fundamentals for 5 members",
        "Organized biotechnology start-up investigation and pamphlet production for planning competition",
      ),
    ),
    (
      title: "2023 Korea Youth Bio-academy",
      location: "Incheon, Korea",
      institution: "Incheon National University",
      position: "Teaching Assistant",
      date: "4 Sep. 2023 – 23 Sep. 2023",
      description: (
        "Taught cell-free gene expression and fluorescent protein visualization to high school students",
      ),
    ),
    (
      title: "Incheon Science High School",
      location: "Incheon, Korea",
      position: "Guest Lecturer",
      date: "24 Nov. 2025 – 25 Nov. 2025",
      description: (
        "Lectured on AI applications in modern biology for high school science teachers: AlphaFold3 for protein structure prediction and AI-driven protein engineering",
      ),
    ),
  ),

  skills: (
    (label: "Computational", details: "Python, Rust, C, Nix, SQL"),
    (
      label: "Bioinformatics",
      details: "BLAST, Nextflow, Infernal, NUPACK, ViennaRNA, fastp, MultiQC, NCBI nr, MGnify",
    ),
    (label: "ML & AI", details: "AlphaFold3, ESM, EvolvePro"),
    (
      label: "Laboratory",
      details: "RNA Capture-SELEX, NGS Library Preparation, Gibson Assembly, Molecular Cloning",
    ),
    (label: "Infrastructure", details: "NixOS, Terraform, Linux, Docker"),
  ),

  oss: (
    (
      name: "NixOS/nixpkgs",
      url: "https://github.com/NixOS/nixpkgs",
      position: "Package Maintainer",
      date: "Mar. 2025 – Present",
      description: "Maintaining bioinformatics packages (Nextflow, BLAST, ViennaRNA)",
    ),
    (
      name: "PyTorch",
      url: "https://github.com/pytorch/pytorch",
      description: "Bug fix (undefined behavior in CPUBLAS, cherry-picked)",
    ),
    (
      name: "Graphein",
      url: "https://github.com/a-r-j/graphein",
      description: "Bug fix (rdkit dependency guard)",
    ),
  ),

  awards: (
    (
      description: "Scholarship for Academic Excellence (Top 5%, 60% funded)",
      where: "Incheon National University, Fall 2019",
    ),
    (
      description: "Scholarship for Academic Excellence (Top 12%, 30% funded)",
      where: "Incheon National University, Spring 2020",
    ),
    (
      description: "Scholarship for Academic Excellence (Top 3%, Full-funded)",
      where: "Incheon National University, Spring 2023",
    ),
    (
      description: "This year, UNI (Grand Prize for Planning Competition)",
      where: "Incheon National University, Sep. 2023",
    ),
    (
      description: "Scholarship for Academic Excellence (Top 3%, Full-funded)",
      where: "Incheon National University, Fall 2023",
    ),
    (
      description: "Scholarship for Academic Excellence (Top 12%, 30% funded)",
      where: "Incheon National University, Spring 2024",
    ),
  ),
)
