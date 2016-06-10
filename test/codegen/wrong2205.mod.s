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
    #      8(%ebp)   1  [ %v2       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v3       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v4       <ptr(4) to <array 70 of <array 10 of <array 98 of <array 36 of <array 53 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v5       <bool> %ebp+20 ]

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
    movzbl  -13(%ebp), %eax         #   1:     if     t1 = 1 goto 6
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_6                 
    jmp     l_f0_2_if_false         #   2:     goto   2_if_false
l_f0_6:
    jmp     l_f0_2_if_false         #   4:     goto   2_if_false
    jmp     l_f0_2_if_false         #   5:     goto   2_if_false
    jmp     l_f0_0                  #   6:     goto   0
l_f0_2_if_false:
l_f0_0:
    movl    $18150, %eax            #   9:     if     18150 = 96361 goto 8_if_true
    movl    $96361, %ebx           
    cmpl    %ebx, %eax             
    je      l_f0_8_if_true         
    jmp     l_f0_9_if_false         #  10:     goto   9_if_false
l_f0_8_if_true:
    movl    $1, %eax                #  12:     return 1
    jmp     l_f0_exit              
    movl    $99, %eax               #  13:     if     99 <= 99 goto 13_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f0_13_if_true        
    jmp     l_f0_14_if_false        #  14:     goto   14_if_false
l_f0_13_if_true:
    jmp     l_f0_12                 #  16:     goto   12
l_f0_14_if_false:
l_f0_12:
    jmp     l_f0_18_if_false        #  19:     goto   18_if_false
    jmp     l_f0_16                 #  20:     goto   16
l_f0_18_if_false:
l_f0_16:
l_f0_20_while_cond:
    movl    $3897, %eax             #  24:     if     3897 < 12651 goto 21_while_body
    movl    $12651, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_21_while_body     
    jmp     l_f0_19                 #  25:     goto   19
l_f0_21_while_body:
    jmp     l_f0_20_while_cond      #  27:     goto   20_while_cond
l_f0_19:
    jmp     l_f0_7                  #  29:     goto   7
l_f0_9_if_false:
l_f0_7:
    call    dummyCHARfunc           #  32:     call   t2 <- dummyCHARfunc
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
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 84 of <array 4 of <array 17 of <array 22 of <array 53 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <ptr(4) to <array 90 of <array 3 of <array 74 of <array 17 of <array 95 of <int>>>>>>> %ebp+12 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body
    movl    $98, %eax               #   0:     param  0 <- 98
    pushl   %eax                   
    call    WriteChar               #   1:     call   WriteChar
    addl    $4, %esp               
l_f1_2_while_cond:
    movl    $99, %eax               #   3:     if     99 = 100 goto 3_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    je      l_f1_3_while_body      
    jmp     l_f1_1                  #   4:     goto   1
l_f1_3_while_body:
    jmp     l_f1_2_while_cond       #   6:     goto   2_while_cond
l_f1_1:
    jmp     l_f1_exit              

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
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 31 of <array 84 of <array 17 of <array 23 of <array 31 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v3       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v4       <ptr(4) to <array 55 of <array 69 of <array 8 of <array 38 of <array 76 of <bool>>>>>>> %ebp+16 ]

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
    call    dummyINTfunc            #   1:     call   t1 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
l_f2_3_while_cond:
    call    dummyINTfunc            #   3:     call   t2 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   4:     if     t2 < 62312 goto 4_while_body
    movl    $62312, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_4_while_body      
    jmp     l_f2_2                  #   5:     goto   2
l_f2_4_while_body:
    movl    $98, %eax               #   7:     return 98
    jmp     l_f2_exit              
    call    ReadInt                 #   8:     call   t3 <- ReadInt
    movl    %eax, -24(%ebp)        
    jmp     l_f2_3_while_cond       #   9:     goto   3_while_cond
l_f2_2:

l_f2_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]

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
    jmp     l_test_3                #   1:     goto   3
l_test_3:
l_test_7_while_cond:
    jmp     l_test_6                #   4:     goto   6
    jmp     l_test_7_while_cond     #   5:     goto   7_while_cond
l_test_6:
    movl    $1, %eax                #   7:     assign v0 <- 1
    movb    %al, v0                
    movl    $49133, %eax            #   8:     assign v1 <- 49133
    movl    %eax, v1               
    jmp     l_test_0                #   9:     goto   0
l_test_2_if_false:
l_test_0:
    call    WriteLn                 #  12:     call   WriteLn
    call    dummyBOOLfunc           #  13:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
l_test_14_while_cond:
    jmp     l_test_13               #  15:     goto   13
    jmp     l_test_13               #  16:     goto   13
    jmp     l_test_13               #  17:     goto   13
    jmp     l_test_20               #  18:     goto   20
l_test_20:
    jmp     l_test_25_if_false      #  20:     goto   25_if_false
    jmp     l_test_23               #  21:     goto   23
l_test_25_if_false:
l_test_23:
    jmp     l_test_14_while_cond    #  24:     goto   14_while_cond
l_test_13:

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
    .align   4
v1:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
