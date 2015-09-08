import filter from 'mout/array/filter';
import contains from 'mout/array/contains';


function filterForSemester(arr, semester) {
  let s = semester;
  return filter(arr, function(val, key, arr){
    return contains(val.semesters, s);
  });
}

export default {
  filterForSemester: filterForSemester
};
