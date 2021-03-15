package schema

import (
  "strings"
)


#World: {
  name:     string
  camelName:  strings.ToCamel(name)
  TitleName:  strings.ToTitle(name)
  UPPER_NAME: strings.ToUpper(name)

  person:  string // brian (will be resolved to {DATA}/person/brian.yaml)
  personPath: "\(person)"
}
 
#Person: {
  first_name: string
  last_name: string
  age: int 
}