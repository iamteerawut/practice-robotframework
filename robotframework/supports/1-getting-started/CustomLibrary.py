from datetime import datetime


def sort_list_date(unsorted_list):
    # sample_list = ['10/08/2021', '11/08/2021', '12/08/2021']
    sorted_list = []
    unsorted_list.sort(key=lambda date: datetime.strptime(date, '%d/%m/%Y'))
    for i in range(len(unsorted_list)):
        sorted_list.append(unsorted_list[i])
    # logger.console(sorted_list)
    return sorted_list
