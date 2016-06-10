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
    #    -13(%ebp)   1  [ $t1       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t2       <bool> %ebp-14 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 73 of <array 73 of <array 19 of <array 58 of <array 82 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 57 of <array 51 of <array 41 of <array 63 of <array 17 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v4       <char> %ebp+20 ]

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
    jmp     l_f0_0                  #   1:     goto   0
    jmp     l_f0_0                  #   2:     goto   0
l_f0_5_while_cond:
    jmp     l_f0_4                  #   4:     goto   4
    jmp     l_f0_5_while_cond       #   5:     goto   5_while_cond
l_f0_4:
    jmp     l_f0_1_while_cond       #   7:     goto   1_while_cond
l_f0_0:
l_f0_8_while_cond:
    call    dummyCHARfunc           #  10:     call   t1 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    jmp     l_f0_8_while_cond       #  11:     goto   8_while_cond
    call    dummyBOOLfunc           #  12:     call   t2 <- dummyBOOLfunc
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
    #    -14(%ebp)   1  [ $t2       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t3       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $t4       <bool> %ebp-16 ]
    #    -17(%ebp)   1  [ $t5       <bool> %ebp-17 ]
    #    -24(%ebp)   4  [ $v1       <int> %ebp-24 ]

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
    movl    $0, %eax                #   0:     if     0 = 1 goto 1_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   1:     goto   2_if_false
l_f1_1_if_true:
    movl    $61801, %eax            #   3:     assign v1 <- 61801
    movl    %eax, -24(%ebp)        
l_f1_6_while_cond:
    movl    $97, %eax               #   5:     if     97 < 99 goto 7_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_7_while_body      
    jmp     l_f1_5                  #   6:     goto   5
l_f1_7_while_body:
    jmp     l_f1_6_while_cond       #   8:     goto   6_while_cond
l_f1_5:
    call    dummyBOOLfunc           #  10:     call   t1 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $0, %eax                #  11:     return 0
    jmp     l_f1_exit              
    jmp     l_f1_0                  #  12:     goto   0
l_f1_2_if_false:
l_f1_0:
    movl    $0, %eax                #  15:     if     0 # 0 goto 16
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f1_16                
    jmp     l_f1_17                 #  16:     goto   17
l_f1_16:
    movl    $1, %eax                #  18:     assign t2 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_18                 #  19:     goto   18
l_f1_17:
    movl    $0, %eax                #  21:     assign t2 <- 0
    movb    %al, -14(%ebp)         
l_f1_18:
    movl    $1, %eax                #  23:     if     1 # t2 goto 12
    movzbl  -14(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f1_12                
    jmp     l_f1_13                 #  24:     goto   13
l_f1_12:
    movl    $1, %eax                #  26:     assign t3 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f1_14                 #  27:     goto   14
l_f1_13:
    movl    $0, %eax                #  29:     assign t3 <- 0
    movb    %al, -15(%ebp)         
l_f1_14:
    movzbl  -15(%ebp), %eax         #  31:     return t3
    jmp     l_f1_exit              
l_f1_22_while_cond:
    jmp     l_f1_26                 #  33:     goto   26
    movl    $1, %eax                #  34:     assign t4 <- 1
    movb    %al, -16(%ebp)         
    jmp     l_f1_27                 #  35:     goto   27
l_f1_26:
    movl    $0, %eax                #  37:     assign t4 <- 0
    movb    %al, -16(%ebp)         
l_f1_27:
    movl    $0, %eax                #  39:     if     0 = t4 goto 23_while_body
    movzbl  -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f1_23_while_body     
    jmp     l_f1_21                 #  40:     goto   21
l_f1_23_while_body:
    call    dummyBOOLfunc           #  42:     call   t5 <- dummyBOOLfunc
    movb    %al, -17(%ebp)         
    jmp     l_f1_22_while_cond      #  43:     goto   22_while_cond
l_f1_21:

l_f1_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t1       <bool> %ebp-13 ]

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
l_f2_1_while_cond:
    jmp     l_f2_4                  #   1:     goto   4
    jmp     l_f2_5                  #   2:     goto   5
l_f2_4:
    movl    $1, %eax                #   4:     assign t1 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_6                  #   5:     goto   6
l_f2_5:
    movl    $0, %eax                #   7:     assign t1 <- 0
    movb    %al, -13(%ebp)         
l_f2_6:
    movl    $1, %eax                #   9:     if     1 = t1 goto 2_while_body
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f2_2_while_body      
    jmp     l_f2_0                  #  10:     goto   0
l_f2_2_while_body:
    movl    $75549, %eax            #  12:     if     75549 >= 79626 goto 9_if_true
    movl    $79626, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_9_if_true         
    jmp     l_f2_10_if_false        #  13:     goto   10_if_false
l_f2_9_if_true:
    jmp     l_f2_8                  #  15:     goto   8
l_f2_10_if_false:
l_f2_8:
    jmp     l_f2_1_while_cond       #  18:     goto   1_while_cond
l_f2_0:
l_f2_13_while_cond:
    jmp     l_f2_12                 #  21:     goto   12
    jmp     l_f2_12                 #  22:     goto   12
    jmp     l_f2_12                 #  23:     goto   12
    jmp     l_f2_12                 #  24:     goto   12
    jmp     l_f2_13_while_cond      #  25:     goto   13_while_cond
l_f2_12:
l_f2_22_while_cond:
    jmp     l_f2_22_while_cond      #  28:     goto   22_while_cond

l_f2_exit:
    # epilogue
    addl    $4, %esp                # remove locals
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
    jmp     l_test_exit            
    movl    $0, %eax                #   1:     assign v0 <- 0
    movb    %al, v0                
    movl    $1, %eax                #   2:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_5                #   3:     goto   5
    movl    $0, %eax                #   4:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_5:
    movzbl  -13(%ebp), %eax         #   6:     assign v0 <- t0
    movb    %al, v0                
    jmp     l_test_exit            
    jmp     l_test_exit            

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








    # end of global data section
    #-----------------------------------------

    .end
##################################################
