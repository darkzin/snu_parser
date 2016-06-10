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
    #    -13(%ebp)   1  [ $t1       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t2       <char> %ebp-14 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 10 of <array 1 of <array 3 of <array 10 of <array 3 of <bool>>>>>>> %ebp+8 ]
    #    -15(%ebp)   1  [ $v2       <bool> %ebp-15 ]

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
    call    dummyBOOLfunc           #   0:     call   t1 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $1, %eax                #   1:     assign v2 <- 1
    movb    %al, -15(%ebp)         
    call    dummyCHARfunc           #   2:     call   t2 <- dummyCHARfunc
    movb    %al, -14(%ebp)         

l_f0_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t1       <bool> %ebp-13 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 8 of <array 2 of <array 9 of <array 4 of <array 5 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 1 of <array 8 of <array 6 of <array 3 of <array 9 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 6 of <array 6 of <array 1 of <array 4 of <array 2 of <char>>>>>>> %ebp+16 ]
    #    -14(%ebp)   1  [ $v4       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $v5       <char> %ebp-15 ]

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
    jmp     l_f1_exit              
    movl    $68117, %eax            #   1:     if     68117 >= 26468 goto 2_if_true
    movl    $26468, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_2_if_true         
    jmp     l_f1_3_if_false         #   2:     goto   3_if_false
l_f1_2_if_true:
    jmp     l_f1_exit              
    movl    $0, %eax                #   5:     if     0 = 1 goto 7
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_7                 
    jmp     l_f1_8                  #   6:     goto   8
l_f1_7:
    movl    $1, %eax                #   8:     assign t1 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_9                  #   9:     goto   9
l_f1_8:
    movl    $0, %eax                #  11:     assign t1 <- 0
    movb    %al, -13(%ebp)         
l_f1_9:
    movzbl  -13(%ebp), %eax         #  13:     assign v4 <- t1
    movb    %al, -14(%ebp)         
    movl    $98, %eax               #  14:     assign v5 <- 98
    movb    %al, -15(%ebp)         
l_f1_13_while_cond:
    movl    $95142, %eax            #  16:     if     95142 <= 47188 goto 14_while_body
    movl    $47188, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_14_while_body     
    jmp     l_f1_12                 #  17:     goto   12
l_f1_14_while_body:
    jmp     l_f1_13_while_cond      #  19:     goto   13_while_cond
l_f1_12:
    jmp     l_f1_18_if_false        #  21:     goto   18_if_false
    jmp     l_f1_16                 #  22:     goto   16
l_f1_18_if_false:
l_f1_16:
    jmp     l_f1_1                  #  25:     goto   1
l_f1_3_if_false:
l_f1_1:
    jmp     l_f1_exit              

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
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t2       <char> %ebp-17 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 7 of <array 7 of <array 3 of <array 4 of <array 9 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <int> %ebp+12 ]

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
l_f2_1_while_cond:
    call    ReadInt                 #   1:     call   t1 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     if     t1 <= 48286 goto 2_while_body
    movl    $48286, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_2_while_body      
    jmp     l_f2_0                  #   3:     goto   0
l_f2_2_while_body:
    jmp     l_f2_6_if_false         #   5:     goto   6_if_false
    jmp     l_f2_4                  #   6:     goto   4
l_f2_6_if_false:
l_f2_4:
    jmp     l_f2_7                  #   9:     goto   7
l_f2_7:
    jmp     l_f2_1_while_cond       #  11:     goto   1_while_cond
l_f2_0:
    jmp     l_f2_11_if_true         #  13:     goto   11_if_true
    jmp     l_f2_11_if_true         #  14:     goto   11_if_true
    jmp     l_f2_11_if_true         #  15:     goto   11_if_true
    jmp     l_f2_11_if_true         #  16:     goto   11_if_true
    jmp     l_f2_11_if_true         #  17:     goto   11_if_true
    jmp     l_f2_11_if_true         #  18:     goto   11_if_true
l_f2_11_if_true:
    jmp     l_f2_23_if_false        #  20:     goto   23_if_false
    jmp     l_f2_21                 #  21:     goto   21
l_f2_23_if_false:
l_f2_21:
    movl    $14043, %eax            #  24:     assign v2 <- 14043
    movl    %eax, 12(%ebp)         
    jmp     l_f2_10                 #  25:     goto   10
l_f2_10:
    call    dummyCHARfunc           #  27:     call   t2 <- dummyCHARfunc
    movb    %al, -17(%ebp)         

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
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]

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
    jmp     l_test_2_if_false       #   1:     goto   2_if_false
    jmp     l_test_exit            
    movl    $1, %eax                #   3:     assign v0 <- 1
    movb    %al, v0                
    jmp     l_test_0                #   4:     goto   0
l_test_2_if_false:
l_test_0:
    jmp     l_test_exit            
    jmp     l_test_10_if_false      #   8:     goto   10_if_false
l_test_14_while_cond:
    jmp     l_test_14_while_cond    #  10:     goto   14_while_cond
    movl    $98, %eax               #  11:     assign v1 <- 98
    movb    %al, v1                
    jmp     l_test_8                #  12:     goto   8
l_test_10_if_false:
l_test_8:
    jmp     l_test_exit            
    jmp     l_test_exit            
    jmp     l_test_22               #  17:     goto   22
l_test_22:
    call    dummyCHARfunc           #  19:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    jmp     l_test_18               #  20:     goto   18
l_test_18:

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

    # scope: test
v0:                                 # <bool>
    .skip    1
v1:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
