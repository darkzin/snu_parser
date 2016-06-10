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
    #    -13(%ebp)   1  [ $t3       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <bool> %ebp-14 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 16 of <array 11 of <array 43 of <array 13 of <array 42 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 46 of <array 4 of <array 41 of <array 30 of <array 88 of <int>>>>>>> %ebp+16 ]

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
l_f0_1_while_cond:
    movl    $100, %eax              #   1:     if     100 > 97 goto 4_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_4_if_true         
    jmp     l_f0_5_if_false         #   2:     goto   5_if_false
l_f0_4_if_true:
    jmp     l_f0_3                  #   4:     goto   3
l_f0_5_if_false:
l_f0_3:
    call    dummyCHARfunc           #   7:     call   t3 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    jmp     l_f0_10_if_false        #   8:     goto   10_if_false
    movl    $29696, %eax            #   9:     if     29696 >= 57992 goto 12_if_true
    movl    $57992, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_12_if_true        
    jmp     l_f0_13_if_false        #  10:     goto   13_if_false
l_f0_12_if_true:
    jmp     l_f0_11                 #  12:     goto   11
l_f0_13_if_false:
l_f0_11:
l_f0_16_while_cond:
    jmp     l_f0_16_while_cond      #  16:     goto   16_while_cond
    jmp     l_f0_18                 #  17:     goto   18
l_f0_18:
    jmp     l_f0_8                  #  19:     goto   8
l_f0_10_if_false:
l_f0_8:
    jmp     l_f0_1_while_cond       #  22:     goto   1_while_cond
    call    WriteLn                 #  23:     call   WriteLn
l_f0_23_while_cond:
    jmp     l_f0_24_while_body      #  25:     goto   24_while_body
    call    dummyBOOLfunc           #  26:     call   t4 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #  27:     if     t4 = 1 goto 24_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_24_while_body     
    jmp     l_f0_22                 #  28:     goto   22
l_f0_24_while_body:
    jmp     l_f0_23_while_cond      #  30:     goto   23_while_cond
l_f0_22:

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
    #    -13(%ebp)   1  [ $t3       <bool> %ebp-13 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 18 of <array 78 of <array 12 of <array 83 of <array 17 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 66 of <array 13 of <array 99 of <array 45 of <array 15 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 33 of <array 85 of <array 21 of <array 9 of <array 46 of <bool>>>>>>> %ebp+20 ]
    #    -14(%ebp)   1  [ $v4       <char> %ebp-14 ]

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
    jmp     l_f1_4                  #   0:     goto   4
    jmp     l_f1_4                  #   1:     goto   4
    jmp     l_f1_4                  #   2:     goto   4
    jmp     l_f1_4                  #   3:     goto   4
    jmp     l_f1_5                  #   4:     goto   5
l_f1_4:
    movl    $1, %eax                #   6:     assign t3 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_6                  #   7:     goto   6
l_f1_5:
    movl    $0, %eax                #   9:     assign t3 <- 0
    movb    %al, -13(%ebp)         
l_f1_6:
    movzbl  -13(%ebp), %eax         #  11:     if     t3 = 0 goto 1_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_1_if_true         
    jmp     l_f1_2_if_false         #  12:     goto   2_if_false
l_f1_1_if_true:
    jmp     l_f1_0                  #  14:     goto   0
l_f1_2_if_false:
l_f1_0:
    movl    $97, %eax               #  17:     return 97
    jmp     l_f1_exit              
    movl    $98, %eax               #  18:     assign v4 <- 98
    movb    %al, -14(%ebp)         

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
    #    -13(%ebp)   1  [ $t3       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $v0       <bool> %ebp-21 ]

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
    jmp     l_f2_2_if_false         #   0:     goto   2_if_false
    call    dummyBOOLfunc           #   1:     call   t3 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $98, %eax               #   2:     return 98
    jmp     l_f2_exit              
    jmp     l_f2_0                  #   3:     goto   0
l_f2_2_if_false:
l_f2_0:
    jmp     l_f2_6                  #   6:     goto   6
    jmp     l_f2_6                  #   7:     goto   6
l_f2_6:
    movl    $1, %eax                #   9:     assign t4 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_8                  #  10:     goto   8
    movl    $0, %eax                #  11:     assign t4 <- 0
    movb    %al, -14(%ebp)         
l_f2_8:
    movzbl  -14(%ebp), %eax         #  13:     assign v0 <- t4
    movb    %al, -21(%ebp)         
    movl    $99, %eax               #  14:     if     99 > 98 goto 12_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f2_12_if_true        
    jmp     l_f2_13_if_false        #  15:     goto   13_if_false
l_f2_12_if_true:
    movl    $99, %eax               #  17:     if     99 <= 99 goto 16_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_16_if_true        
    jmp     l_f2_17_if_false        #  18:     goto   17_if_false
l_f2_16_if_true:
    jmp     l_f2_15                 #  20:     goto   15
l_f2_17_if_false:
l_f2_15:
    call    dummyINTfunc            #  23:     call   t5 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  24:     param  0 <- t5
    pushl   %eax                   
    call    WriteInt                #  25:     call   WriteInt
    addl    $4, %esp               
    jmp     l_f2_11                 #  26:     goto   11
l_f2_13_if_false:
l_f2_11:

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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <bool> %ebp-21 ]

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
    jmp     l_test_exit            
l_test_2_while_cond:
    jmp     l_test_1                #   2:     goto   1
    movl    $92223, %eax            #   3:     mul    t0 <- 92223, 93965
    movl    $93965, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   4:     div    t1 <- t0, 99878
    movl    $99878, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   5:     if     t1 = 73116 goto 5_if_true
    movl    $73116, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_5_if_true       
    jmp     l_test_6_if_false       #   6:     goto   6_if_false
l_test_5_if_true:
    jmp     l_test_4                #   8:     goto   4
l_test_6_if_false:
l_test_4:
    jmp     l_test_2_while_cond     #  11:     goto   2_while_cond
l_test_1:
    movl    $97, %eax               #  13:     if     97 < 98 goto 9_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_9_if_true       
    jmp     l_test_10_if_false      #  14:     goto   10_if_false
l_test_9_if_true:
l_test_13_while_cond:
    jmp     l_test_12               #  17:     goto   12
    jmp     l_test_13_while_cond    #  18:     goto   13_while_cond
l_test_12:
    call    dummyBOOLfunc           #  20:     call   t2 <- dummyBOOLfunc
    movb    %al, -21(%ebp)         
    jmp     l_test_8                #  21:     goto   8
l_test_10_if_false:
l_test_8:
    call    WriteLn                 #  24:     call   WriteLn
    jmp     l_test_exit            

l_test_exit:
    # epilogue
    addl    $12, %esp               # remove locals
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
