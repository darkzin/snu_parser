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
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t13      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t14      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t15      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t16      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t17      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t18      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t19      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t20      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t21      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t22      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t23      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t24      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t25      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t26      <int> %ebp-80 ]
    #    -81(%ebp)   1  [ $t8       <bool> %ebp-81 ]
    #    -82(%ebp)   1  [ $t9       <char> %ebp-82 ]
    #      8(%ebp)   1  [ %v2       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <ptr(4) to <array 10 of <array 9 of <array 10 of <array 6 of <array 4 of <bool>>>>>>> %ebp+12 ]
    #    -88(%ebp)   4  [ $v4       <int> %ebp-88 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $76, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $19, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    jmp     l_f0_1                  #   0:     goto   1
    jmp     l_f0_2                  #   1:     goto   2
l_f0_1:
    movl    $1, %eax                #   3:     assign t8 <- 1
    movb    %al, -81(%ebp)         
    jmp     l_f0_3                  #   4:     goto   3
l_f0_2:
    movl    $0, %eax                #   6:     assign t8 <- 0
    movb    %al, -81(%ebp)         
l_f0_3:
    movzbl  -81(%ebp), %eax         #   8:     assign v2 <- t8
    movb    %al, 8(%ebp)           
    call    dummyCHARfunc           #   9:     call   t9 <- dummyCHARfunc
    movb    %al, -82(%ebp)         
    movl    $97, %eax               #  10:     if     97 < t9 goto 6
    movzbl  -82(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f0_6                 
    jmp     l_f0_7                  #  11:     goto   7
l_f0_6:
    movl    $1, %eax                #  13:     assign t10 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_8                  #  14:     goto   8
l_f0_7:
    movl    $0, %eax                #  16:     assign t10 <- 0
    movb    %al, -13(%ebp)         
l_f0_8:
    movl    $2, %eax                #  18:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #  19:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  20:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    $61156, %eax            #  21:     mul    t12 <- 61156, t11
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  22:     add    t13 <- t12, 72501
    movl    $72501, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $3, %eax                #  23:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  24:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  25:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  26:     mul    t15 <- t13, t14
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  27:     add    t16 <- t15, 73275
    movl    $73275, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $4, %eax                #  28:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  29:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  30:     call   t17 <- DIM
    addl    $8, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  31:     mul    t18 <- t16, t17
    movl    -44(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  32:     add    t19 <- t18, 61642
    movl    $61642, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    $5, %eax                #  33:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  34:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  35:     call   t20 <- DIM
    addl    $8, %esp               
    movl    %eax, -56(%ebp)        
    movl    -52(%ebp), %eax         #  36:     mul    t21 <- t19, t20
    movl    -56(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  37:     add    t22 <- t21, 41669
    movl    $41669, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  38:     mul    t23 <- t22, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    12(%ebp), %eax          #  39:     param  0 <- v3
    pushl   %eax                   
    call    DOFS                    #  40:     call   t24 <- DOFS
    addl    $4, %esp               
    movl    %eax, -72(%ebp)        
    movl    -68(%ebp), %eax         #  41:     add    t25 <- t23, t24
    movl    -72(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    12(%ebp), %eax          #  42:     add    t26 <- v3, t25
    movl    -76(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movzbl  -13(%ebp), %eax         #  43:     assign @t26 <- t10
    movl    -80(%ebp), %edi        
    movb    %al, (%edi)            
    movl    $25561, %eax            #  44:     if     25561 = 11930 goto 14_if_true
    movl    $11930, %ebx           
    cmpl    %ebx, %eax             
    je      l_f0_14_if_true        
    jmp     l_f0_15_if_false        #  45:     goto   15_if_false
l_f0_14_if_true:
    jmp     l_f0_13                 #  47:     goto   13
l_f0_15_if_false:
l_f0_13:
    movl    $96219, %eax            #  50:     assign v4 <- 96219
    movl    %eax, -88(%ebp)        
    jmp     l_f0_10                 #  51:     goto   10
l_f0_10:

l_f0_exit:
    # epilogue
    addl    $76, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t8       <char> %ebp-13 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 3 of <array 1 of <array 5 of <array 7 of <array 4 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v3       <char> %ebp+12 ]

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
    movl    $98, %eax               #   0:     assign v3 <- 98
    movb    %al, 12(%ebp)          
l_f1_2_while_cond:
    movl    $100, %eax              #   2:     assign v3 <- 100
    movb    %al, 12(%ebp)          
    jmp     l_f1_2_while_cond       #   3:     goto   2_while_cond
    call    dummyCHARfunc           #   4:     call   t8 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   5:     return t8
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
    #    -16(%ebp)   4  [ $t8       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $v2       <int> %ebp-20 ]

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
    movl    $98, %eax               #   0:     param  0 <- 98
    pushl   %eax                   
    call    WriteChar               #   1:     call   WriteChar
    addl    $4, %esp               
    jmp     l_f2_3_if_false         #   2:     goto   3_if_false
    movl    $48672, %eax            #   3:     assign v2 <- 48672
    movl    %eax, -20(%ebp)        
    jmp     l_f2_1                  #   4:     goto   1
l_f2_3_if_false:
l_f2_1:
    movl    $77748, %eax            #   7:     sub    t8 <- 77748, 64336
    movl    $64336, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   8:     assign v2 <- t8
    movl    %eax, -20(%ebp)        

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
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t3       <bool> %ebp-25 ]
    #    -32(%ebp)   4  [ $t4       <ptr(4) to <array 3 of <array 1 of <array 5 of <array 7 of <array 4 of <int>>>>>>> %ebp-32 ]
    #    -33(%ebp)   1  [ $t5       <char> %ebp-33 ]
    #    -40(%ebp)   4  [ $t6       <ptr(4) to <array 3 of <array 1 of <array 5 of <array 7 of <array 4 of <int>>>>>>> %ebp-40 ]
    #    -41(%ebp)   1  [ $t7       <char> %ebp-41 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $32, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $8, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    jmp     l_test_2_if_false       #   0:     goto   2_if_false
l_test_4_while_cond:
    jmp     l_test_3                #   2:     goto   3
    jmp     l_test_4_while_cond     #   3:     goto   4_while_cond
l_test_3:
    jmp     l_test_exit            
l_test_8_while_cond:
    movl    $59201, %eax            #   7:     if     59201 # 83851 goto 9_while_body
    movl    $83851, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_9_while_body    
    jmp     l_test_7                #   8:     goto   7
l_test_9_while_body:
    jmp     l_test_8_while_cond     #  10:     goto   8_while_cond
l_test_7:
    movl    $83460, %eax            #  12:     assign v0 <- 83460
    movl    %eax, v0               
    jmp     l_test_0                #  13:     goto   0
l_test_2_if_false:
l_test_0:
    movl    $80365, %eax            #  16:     add    t0 <- 80365, 61976
    movl    $61976, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  17:     sub    t1 <- t0, 71148
    movl    $71148, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  18:     assign v0 <- t1
    movl    %eax, v0               
    movl    $0, %eax                #  19:     if     0 # 0 goto 14_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_14_if_true      
    jmp     l_test_15_if_false      #  20:     goto   15_if_false
l_test_14_if_true:
    call    WriteLn                 #  22:     call   WriteLn
l_test_19_while_cond:
    movl    $42879, %eax            #  24:     if     42879 <= 53761 goto 20_while_body
    movl    $53761, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_20_while_body   
    jmp     l_test_18               #  25:     goto   18
l_test_20_while_body:
    jmp     l_test_19_while_cond    #  27:     goto   19_while_cond
l_test_18:
    movl    $100, %eax              #  29:     if     100 > 97 goto 23_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_23_if_true      
    jmp     l_test_24_if_false      #  30:     goto   24_if_false
l_test_23_if_true:
    jmp     l_test_22               #  32:     goto   22
l_test_24_if_false:
l_test_22:
    movl    $0, %eax                #  35:     assign v1 <- 0
    movb    %al, v1                
    movl    $9737, %eax             #  36:     assign v0 <- 9737
    movl    %eax, v0               
    jmp     l_test_13               #  37:     goto   13
l_test_15_if_false:
l_test_13:
    call    ReadInt                 #  40:     call   t2 <- ReadInt
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  41:     if     t2 # 94444 goto 29_if_true
    movl    $94444, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_29_if_true      
    jmp     l_test_30_if_false      #  42:     goto   30_if_false
l_test_29_if_true:
    call    dummyBOOLfunc           #  44:     call   t3 <- dummyBOOLfunc
    movb    %al, -25(%ebp)         
    jmp     l_test_exit            
    jmp     l_test_28               #  46:     goto   28
l_test_30_if_false:
l_test_28:
    movl    $98, %eax               #  49:     param  1 <- 98
    pushl   %eax                   
    leal    v2, %eax                #  50:     &()    t4 <- v2
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  51:     param  0 <- t4
    pushl   %eax                   
    call    f1                      #  52:     call   t5 <- f1
    addl    $8, %esp               
    movb    %al, -33(%ebp)         
    movzbl  -33(%ebp), %eax         #  53:     param  1 <- t5
    pushl   %eax                   
    leal    v2, %eax                #  54:     &()    t6 <- v2
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  55:     param  0 <- t6
    pushl   %eax                   
    call    f1                      #  56:     call   t7 <- f1
    addl    $8, %esp               
    movb    %al, -41(%ebp)         
l_test_36_while_cond:
    movl    $98, %eax               #  58:     if     98 = 97 goto 37_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    je      l_test_37_while_body   
    jmp     l_test_35               #  59:     goto   35
l_test_37_while_body:
    movl    $78515, %eax            #  61:     assign v0 <- 78515
    movl    %eax, v0               
    jmp     l_test_36_while_cond    #  62:     goto   36_while_cond
l_test_35:

l_test_exit:
    # epilogue
    addl    $32, %esp               # remove locals
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
v1:                                 # <bool>
    .skip    1
    .align   4
v2:                                 # <array 3 of <array 1 of <array 5 of <array 7 of <array 4 of <int>>>>>>
    .long    5
    .long    3
    .long    1
    .long    5
    .long    7
    .long    4
    .skip 1680








    # end of global data section
    #-----------------------------------------

    .end
##################################################
