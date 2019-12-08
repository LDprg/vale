Feature: Comments
  Scenario: Markdown
    When I test comments for ".md"
    Then the output should contain exactly:
    """
    test.md:16:19:vale.Redundancy:'ACT test' is redundant
    test.md:20:19:vale.Redundancy:'ACT test' is redundant
    test.md:26:20:demo.EndingPreposition:Don't end a sentence with 'of.'
    """

  Scenario: reStructuredText
    When I test comments for ".rst"
    Then the output should contain exactly:
    """
    test.rst:16:19:vale.Redundancy:'ACT test' is redundant
    test.rst:20:19:vale.Redundancy:'ACT test' is redundant
    test.rst:26:20:demo.EndingPreposition:Don't end a sentence with 'of.'
    """