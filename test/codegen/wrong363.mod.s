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
    #    -13(%ebp)   1  [ $t2       <char> %ebp-13 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]

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
    call    dummyCHARfunc           #   1:     call   t2 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     if     t2 > 98 goto 2_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_2_while_body      
    jmp     l_f0_0                  #   3:     goto   0
l_f0_2_while_body:
    jmp     l_f0_exit              
    jmp     l_f0_1_while_cond       #   6:     goto   1_while_cond
l_f0_0:
    jmp     l_f0_7_if_false         #   8:     goto   7_if_false
    jmp     l_f0_7_if_false         #   9:     goto   7_if_false
l_f0_10_while_cond:
    movl    $1, %eax                #  11:     if     1 # 0 goto 11_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f0_11_while_body     
    jmp     l_f0_9                  #  12:     goto   9
l_f0_11_while_body:
    jmp     l_f0_10_while_cond      #  14:     goto   10_while_cond
l_f0_9:
    movl    $99, %eax               #  16:     assign v0 <- 99
    movb    %al, 8(%ebp)           
    jmp     l_f0_5                  #  17:     goto   5
l_f0_7_if_false:
l_f0_5:
l_f0_15_while_cond:
    movl    $98, %eax               #  21:     if     98 # 98 goto 16_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f0_16_while_body     
    jmp     l_f0_14                 #  22:     goto   14
l_f0_16_while_body:
    jmp     l_f0_15_while_cond      #  24:     goto   15_while_cond
l_f0_14:

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
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
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
    jmp     l_f1_2_if_false         #   0:     goto   2_if_false
l_f1_4_while_cond:
    jmp     l_f1_3                  #   2:     goto   3
    jmp     l_f1_4_while_cond       #   3:     goto   4_while_cond
l_f1_3:
    jmp     l_f1_0                  #   5:     goto   0
l_f1_2_if_false:
l_f1_0:
l_f1_9_while_cond:
    movl    $88307, %eax            #   9:     mul    t2 <- 88307, 5297
    movl    $5297, %ebx            
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    $28881, %eax            #  10:     if     28881 <= t2 goto 10_while_body
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f1_10_while_body     
    jmp     l_f1_8                  #  11:     goto   8
l_f1_10_while_body:
    jmp     l_f1_9_while_cond       #  13:     goto   9_while_cond
l_f1_8:
    jmp     l_f1_13_if_true         #  15:     goto   13_if_true
l_f1_13_if_true:
    movl    $25225, %eax            #  17:     assign v1 <- 25225
    movl    %eax, -20(%ebp)        
    jmp     l_f1_20_if_false        #  18:     goto   20_if_false
    jmp     l_f1_18                 #  19:     goto   18
l_f1_20_if_false:
l_f1_18:
    jmp     l_f1_21                 #  22:     goto   21
l_f1_21:
    jmp     l_f1_12                 #  24:     goto   12
l_f1_12:

l_f1_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t2       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t3       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t5       <char> %ebp-21 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 4 of <array 4 of <array 4 of <array 2 of <array 3 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #    -28(%ebp)   4  [ $v2       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $v3       <char> %ebp-29 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $20, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $5, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    jmp     l_f2_1_if_true          #   0:     goto   1_if_true
    jmp     l_f2_1_if_true          #   1:     goto   1_if_true
    jmp     l_f2_2_if_false         #   2:     goto   2_if_false
l_f2_1_if_true:
l_f2_6_while_cond:
    movl    $97, %eax               #   5:     if     97 <= 97 goto 7_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_7_while_body      
    jmp     l_f2_5                  #   6:     goto   5
l_f2_7_while_body:
    jmp     l_f2_6_while_cond       #   8:     goto   6_while_cond
l_f2_5:
    movl    $15494, %eax            #  10:     assign v2 <- 15494
    movl    %eax, -28(%ebp)        
    jmp     l_f2_0                  #  11:     goto   0
l_f2_2_if_false:
l_f2_0:
    call    dummyCHARfunc           #  14:     call   t2 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $99, %eax               #  15:     if     99 < t2 goto 11
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f2_11                
    jmp     l_f2_12                 #  16:     goto   12
l_f2_11:
    movl    $1, %eax                #  18:     assign t3 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_13                 #  19:     goto   13
l_f2_12:
    movl    $0, %eax                #  21:     assign t3 <- 0
    movb    %al, -14(%ebp)         
l_f2_13:
    movzbl  -14(%ebp), %eax         #  23:     assign v1 <- t3
    movb    %al, 12(%ebp)          
    movl    $97, %eax               #  24:     if     97 <= 98 goto 16_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_16_if_true        
    jmp     l_f2_17_if_false        #  25:     goto   17_if_false
l_f2_16_if_true:
    movl    $99, %eax               #  27:     assign v3 <- 99
    movb    %al, -29(%ebp)         
    call    dummyINTfunc            #  28:     call   t4 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    call    dummyCHARfunc           #  29:     call   t5 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    jmp     l_f2_15                 #  30:     goto   15
l_f2_17_if_false:
l_f2_15:

l_f2_exit:
    # epilogue
    addl    $20, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]

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
    call    dummyCHARfunc           #   0:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    call    ReadInt                 #   1:     call   t1 <- ReadInt
    movl    %eax, -20(%ebp)        
l_test_3_while_cond:
    jmp     l_test_4_while_body     #   3:     goto   4_while_body
l_test_4_while_body:
l_test_7_while_cond:
    jmp     l_test_7_while_cond     #   6:     goto   7_while_cond
    movl    $69187, %eax            #   7:     assign v0 <- 69187
    movl    %eax, v0               
l_test_11_while_cond:
    jmp     l_test_10               #   9:     goto   10
    jmp     l_test_11_while_cond    #  10:     goto   11_while_cond
l_test_10:
    jmp     l_test_3_while_cond     #  12:     goto   3_while_cond
    jmp     l_test_exit            

l_test_exit:
    # epilogue
    addl    $8, %esp                # remove locals
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
