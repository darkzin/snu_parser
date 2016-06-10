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
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t3       <bool> %ebp-21 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 6 of <array 4 of <array 1 of <array 10 of <array 5 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 10 of <array 5 of <array 8 of <array 5 of <array 6 of <bool>>>>>>> %ebp+16 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $12, %esp               # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 8(%esp)          
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
    call    WriteLn                 #   0:     call   WriteLn
    movl    $37171, %eax            #   1:     sub    t1 <- 37171, 28880
    movl    $28880, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     add    t2 <- t1, 52867
    movl    $52867, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     return t2
    jmp     l_f0_exit              
    call    dummyBOOLfunc           #   4:     call   t3 <- dummyBOOLfunc
    movb    %al, -21(%ebp)         

l_f0_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 8 of <array 7 of <array 6 of <array 6 of <array 9 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body
l_f1_1_while_cond:
    jmp     l_f1_2_while_body       #   1:     goto   2_while_body
l_f1_2_while_body:
    jmp     l_f1_9_if_false         #   3:     goto   9_if_false
    jmp     l_f1_7                  #   4:     goto   7
l_f1_9_if_false:
l_f1_7:
    jmp     l_f1_1_while_cond       #   7:     goto   1_while_cond
l_f1_11_while_cond:
    jmp     l_f1_10                 #   9:     goto   10
    jmp     l_f1_10                 #  10:     goto   10
    jmp     l_f1_10                 #  11:     goto   10
    jmp     l_f1_10                 #  12:     goto   10
    jmp     l_f1_10                 #  13:     goto   10
    jmp     l_f1_11_while_cond      #  14:     goto   11_while_cond
l_f1_10:
    movl    $26670, %eax            #  16:     if     26670 <= 16914 goto 22_if_true
    movl    $16914, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_22_if_true        
    jmp     l_f1_23_if_false        #  17:     goto   23_if_false
l_f1_22_if_true:
l_f1_26_while_cond:
    movl    $98, %eax               #  20:     if     98 <= 97 goto 27_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f1_27_while_body     
    jmp     l_f1_25                 #  21:     goto   25
l_f1_27_while_body:
    jmp     l_f1_26_while_cond      #  23:     goto   26_while_cond
l_f1_25:
    jmp     l_f1_21                 #  25:     goto   21
l_f1_23_if_false:
l_f1_21:

l_f1_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 1 of <array 10 of <array 10 of <array 5 of <array 9 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 4 of <array 1 of <array 8 of <array 8 of <array 5 of <char>>>>>>> %ebp+16 ]
    #    -17(%ebp)   1  [ $v3       <char> %ebp-17 ]

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
    movl    $99, %eax               #   0:     assign v3 <- 99
    movb    %al, -17(%ebp)         
l_f2_2_while_cond:
    movl    $97, %eax               #   2:     if     97 # 99 goto 3_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f2_3_while_body      
    jmp     l_f2_1                  #   3:     goto   1
l_f2_3_while_body:
    jmp     l_f2_2_while_cond       #   5:     goto   2_while_cond
l_f2_1:
    call    dummyINTfunc            #   7:     call   t1 <- dummyINTfunc
    movl    %eax, -16(%ebp)        

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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]

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
    movl    $1, %eax                #   0:     if     1 = 1 goto 1_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_1_if_true       
    jmp     l_test_2_if_false       #   1:     goto   2_if_false
l_test_1_if_true:
    movl    $1, %eax                #   3:     if     1 = 1 goto 5_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_5_if_true       
    jmp     l_test_6_if_false       #   4:     goto   6_if_false
l_test_5_if_true:
    call    ReadInt                 #   6:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
    jmp     l_test_4                #   7:     goto   4
l_test_6_if_false:
l_test_4:
    jmp     l_test_0                #  10:     goto   0
l_test_2_if_false:
l_test_0:
    call    WriteLn                 #  13:     call   WriteLn
    jmp     l_test_13               #  14:     goto   13
l_test_13:
    jmp     l_test_exit            
    jmp     l_test_10               #  17:     goto   10
l_test_10:
    movl    $44581, %eax            #  19:     assign v0 <- 44581
    movl    %eax, v0               

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
v0:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
