##################################################
# test
#

    #-----------------------------------------
    # text section
    #
    .text
    .align 4

    # entry point and pre-defined functions
    .global main
    .extern DIM
    .extern DOFS
    .extern ReadInt
    .extern WriteInt
    .extern WriteStr
    .extern WriteChar
    .extern WriteLn

    # scope dummyINTfunc
dummyINTfunc:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyINTfunc_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope dummyCHARfunc
dummyCHARfunc:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyCHARfunc_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope dummyBOOLfunc
dummyBOOLfunc:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyBOOLfunc_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope dummyProcedure
dummyProcedure:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyProcedure_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f0
f0:
    # stack offsets:
    #    -13(%ebp)   1  [ $t3       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 26 of <array 50 of <array 92 of <array 48 of <array 73 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <bool> %ebp+20 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $8, %esp                # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
    call    dummyBOOLfunc           #   0:     call   t3 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $0, %eax                #   1:     assign v3 <- 0
    movb    %al, 20(%ebp)          
    call    ReadInt                 #   2:     call   t4 <- ReadInt
    movl    %eax, -20(%ebp)        

l_f0_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t3       <char> %ebp-13 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 83 of <array 51 of <array 75 of <array 74 of <array 80 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 90 of <array 97 of <array 87 of <array 43 of <array 9 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 79 of <array 48 of <array 16 of <array 44 of <array 38 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <char> %ebp+20 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $4, %esp                # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 0(%esp)          

    # function body
    call    dummyCHARfunc           #   0:     call   t3 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
l_f1_2_while_cond:
l_f1_7_while_cond:
    jmp     l_f1_7_while_cond       #   3:     goto   7_while_cond
    movl    $15652, %eax            #   4:     if     15652 >= 54721 goto 10_if_true
    movl    $54721, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_10_if_true        
    jmp     l_f1_11_if_false        #   5:     goto   11_if_false
l_f1_10_if_true:
    jmp     l_f1_9                  #   7:     goto   9
l_f1_11_if_false:
l_f1_9:
    jmp     l_f1_2_while_cond       #  10:     goto   2_while_cond
l_f1_14_while_cond:
    movl    $99, %eax               #  12:     if     99 <= 97 goto 15_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f1_15_while_body     
    jmp     l_f1_13                 #  13:     goto   13
l_f1_15_while_body:
    jmp     l_f1_17                 #  15:     goto   17
l_f1_17:
l_f1_21_while_cond:
    jmp     l_f1_22_while_body      #  18:     goto   22_while_body
    jmp     l_f1_22_while_body      #  19:     goto   22_while_body
l_f1_22_while_body:
    jmp     l_f1_21_while_cond      #  21:     goto   21_while_cond
    jmp     l_f1_14_while_cond      #  22:     goto   14_while_cond
l_f1_13:

l_f1_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t3       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $v0       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $v1       <int> %ebp-20 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $8, %esp                # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
    call    dummyCHARfunc           #   0:     call   t3 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    jmp     l_f2_3_if_false         #   1:     goto   3_if_false
    jmp     l_f2_3_if_false         #   2:     goto   3_if_false
    movl    $1, %eax                #   3:     assign v0 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_1                  #   4:     goto   1
l_f2_3_if_false:
l_f2_1:
l_f2_7_while_cond:
    movl    $0, %eax                #   8:     if     0 = 1 goto 8_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_8_while_body      
    jmp     l_f2_6                  #   9:     goto   6
l_f2_8_while_body:
    movl    $98099, %eax            #  11:     assign v1 <- 98099
    movl    %eax, -20(%ebp)        
l_f2_12_while_cond:
    movl    $100, %eax              #  13:     if     100 < 100 goto 13_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f2_13_while_body     
    jmp     l_f2_11                 #  14:     goto   11
l_f2_13_while_body:
    jmp     l_f2_12_while_cond      #  16:     goto   12_while_cond
l_f2_11:
l_f2_16_while_cond:
    movl    $98, %eax               #  19:     if     98 <= 99 goto 17_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_17_while_body     
    jmp     l_f2_15                 #  20:     goto   15
l_f2_17_while_body:
    jmp     l_f2_16_while_cond      #  22:     goto   16_while_cond
l_f2_15:
    jmp     l_f2_19                 #  24:     goto   19
l_f2_19:
    movl    $6311, %eax             #  26:     return 6311
    jmp     l_f2_exit              
    jmp     l_f2_7_while_cond       #  27:     goto   7_while_cond
l_f2_6:

l_f2_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t2       <bool> %ebp-15 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $4, %esp                # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 0(%esp)          

    # function body
    jmp     l_test_2_if_false       #   0:     goto   2_if_false
    call    dummyBOOLfunc           #   1:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_test_0                #   2:     goto   0
l_test_2_if_false:
l_test_0:
    jmp     l_test_exit            
    movl    $99, %eax               #   6:     if     99 = 97 goto 7_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    je      l_test_7_if_true       
    jmp     l_test_8_if_false       #   7:     goto   8_if_false
l_test_7_if_true:
    movl    $100, %eax              #   9:     if     100 < 98 goto 11_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_11_if_true      
    jmp     l_test_12_if_false      #  10:     goto   12_if_false
l_test_11_if_true:
    jmp     l_test_10               #  12:     goto   10
l_test_12_if_false:
l_test_10:
    call    dummyBOOLfunc           #  15:     call   t1 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
l_test_16_while_cond:
    jmp     l_test_16_while_cond    #  17:     goto   16_while_cond
    jmp     l_test_6                #  18:     goto   6
l_test_8_if_false:
l_test_6:
    call    dummyBOOLfunc           #  21:     call   t2 <- dummyBOOLfunc
    movb    %al, -15(%ebp)         

l_test_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # end of text section
    #-----------------------------------------

    #-----------------------------------------
    # global data section
    #
    .data
    .align 4









    # end of global data section
    #-----------------------------------------

    .end
##################################################
