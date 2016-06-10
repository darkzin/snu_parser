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
    #    -16(%ebp)   4  [ $t7       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t8       <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $t9       <bool> %ebp-18 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 1 of <array 4 of <array 2 of <array 9 of <array 5 of <int>>>>>>> %ebp+16 ]

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
l_f0_1_while_cond:
    movl    $51864, %eax            #   1:     add    t7 <- 51864, 84461
    movl    $84461, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $66217, %eax            #   2:     if     66217 = t7 goto 2_while_body
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f0_2_while_body      
    jmp     l_f0_0                  #   3:     goto   0
l_f0_2_while_body:
l_f0_5_while_cond:
    movl    $99, %eax               #   6:     if     99 >= 98 goto 6_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_6_while_body      
    jmp     l_f0_4                  #   7:     goto   4
l_f0_6_while_body:
    jmp     l_f0_5_while_cond       #   9:     goto   5_while_cond
l_f0_4:
l_f0_9_while_cond:
    movl    $98, %eax               #  12:     if     98 < 99 goto 10_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f0_10_while_body     
    jmp     l_f0_8                  #  13:     goto   8
l_f0_10_while_body:
    jmp     l_f0_9_while_cond       #  15:     goto   9_while_cond
l_f0_8:
    jmp     l_f0_1_while_cond       #  17:     goto   1_while_cond
l_f0_0:
    call    dummyCHARfunc           #  19:     call   t8 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #  20:     return t8
    jmp     l_f0_exit              
l_f0_14_while_cond:
    jmp     l_f0_18                 #  22:     goto   18
    jmp     l_f0_18                 #  23:     goto   18
    movl    $1, %eax                #  24:     assign t9 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_f0_19                 #  25:     goto   19
l_f0_18:
    movl    $0, %eax                #  27:     assign t9 <- 0
    movb    %al, -18(%ebp)         
l_f0_19:
    movl    $1, %eax                #  29:     if     1 = t9 goto 15_while_body
    movzbl  -18(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f0_15_while_body     
    jmp     l_f0_13                 #  30:     goto   13
l_f0_15_while_body:
l_f0_22_while_cond:
    jmp     l_f0_22_while_cond      #  33:     goto   22_while_cond
    movl    $100, %eax              #  34:     if     100 <= 97 goto 25_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f0_25_if_true        
    jmp     l_f0_26_if_false        #  35:     goto   26_if_false
l_f0_25_if_true:
    jmp     l_f0_24                 #  37:     goto   24
l_f0_26_if_false:
l_f0_24:
    jmp     l_f0_14_while_cond      #  40:     goto   14_while_cond
l_f0_13:

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
    #    -16(%ebp)   4  [ $t7       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $v1       <char> %ebp-17 ]

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
    movl    $92487, %eax            #   1:     if     92487 <= 67990 goto 5_if_true
    movl    $67990, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_5_if_true         
    jmp     l_f1_6_if_false         #   2:     goto   6_if_false
l_f1_5_if_true:
    jmp     l_f1_4                  #   4:     goto   4
l_f1_6_if_false:
l_f1_4:
    jmp     l_f1_0                  #   7:     goto   0
l_f1_2_if_false:
l_f1_0:
    call    dummyINTfunc            #  10:     call   t7 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    $45485, %eax            #  11:     if     45485 < 43395 goto 10_if_true
    movl    $43395, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_10_if_true        
    jmp     l_f1_11_if_false        #  12:     goto   11_if_false
l_f1_10_if_true:
    movl    $99, %eax               #  14:     param  0 <- 99
    pushl   %eax                   
    call    WriteChar               #  15:     call   WriteChar
    addl    $4, %esp               
l_f1_15_while_cond:
    jmp     l_f1_14                 #  17:     goto   14
    jmp     l_f1_15_while_cond      #  18:     goto   15_while_cond
l_f1_14:
    movl    $98, %eax               #  20:     assign v1 <- 98
    movb    %al, -17(%ebp)         
    movl    $70078, %eax            #  21:     if     70078 > 68566 goto 19_if_true
    movl    $68566, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_19_if_true        
    jmp     l_f1_20_if_false        #  22:     goto   20_if_false
l_f1_19_if_true:
    jmp     l_f1_18                 #  24:     goto   18
l_f1_20_if_false:
l_f1_18:
l_f1_23_while_cond:
    jmp     l_f1_22                 #  28:     goto   22
    jmp     l_f1_23_while_cond      #  29:     goto   23_while_cond
l_f1_22:
    jmp     l_f1_9                  #  31:     goto   9
l_f1_11_if_false:
l_f1_9:

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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t13      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t14      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t15      <int> %ebp-36 ]
    #    -37(%ebp)   1  [ $t16      <char> %ebp-37 ]
    #    -38(%ebp)   1  [ $t7       <char> %ebp-38 ]
    #    -44(%ebp)   4  [ $t8       <ptr(4) to <array 1 of <array 4 of <array 2 of <array 9 of <array 5 of <int>>>>>>> %ebp-44 ]
    #    -48(%ebp)   4  [ $t9       <int> %ebp-48 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 5 of <array 4 of <array 4 of <array 7 of <array 1 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <int> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 6 of <array 8 of <array 3 of <array 3 of <array 7 of <bool>>>>>>> %ebp+20 ]
    #    -49(%ebp)   1  [ $v5       <char> %ebp-49 ]
    #   -1516(%ebp)  1464  [ $v6       <array 1 of <array 4 of <array 2 of <array 9 of <array 5 of <int>>>>>> %ebp-1516 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $1504, %esp             # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $376, %ecx             
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-1516(%ebp)          # local array 'v6': 5 dimensions
    movl    $1,-1512(%ebp)          #   dimension 1: 1 elements
    movl    $4,-1508(%ebp)          #   dimension 2: 4 elements
    movl    $2,-1504(%ebp)          #   dimension 3: 2 elements
    movl    $9,-1500(%ebp)          #   dimension 4: 9 elements
    movl    $5,-1496(%ebp)          #   dimension 5: 5 elements

    # function body
    call    dummyCHARfunc           #   0:     call   t7 <- dummyCHARfunc
    movb    %al, -38(%ebp)         
    movzbl  -38(%ebp), %eax         #   1:     assign v5 <- t7
    movb    %al, -49(%ebp)         
    leal    -1516(%ebp), %eax       #   2:     &()    t8 <- v6
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #   3:     param  2 <- t8
    pushl   %eax                   
    movl    $41864, %eax            #   4:     sub    t9 <- 41864, 20294
    movl    $20294, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #   5:     sub    t10 <- t9, 98814
    movl    $98814, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   6:     add    t11 <- t10, 21716
    movl    $21716, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   7:     add    t12 <- t11, 21752
    movl    $21752, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   8:     add    t13 <- t12, 28121
    movl    $28121, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   9:     sub    t14 <- t13, 16219
    movl    $16219, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  10:     add    t15 <- t14, 57406
    movl    $57406, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  11:     param  1 <- t15
    pushl   %eax                   
    movl    $78053, %eax            #  12:     param  0 <- 78053
    pushl   %eax                   
    call    f0                      #  13:     call   t16 <- f0
    addl    $12, %esp              
    movb    %al, -37(%ebp)         
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $1504, %esp             # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t5       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t6       <int> %ebp-40 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $28, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $7, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
l_test_1_while_cond:
    jmp     l_test_0                #   1:     goto   0
l_test_4_while_cond:
    movl    $99, %eax               #   3:     if     99 # 97 goto 5_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_5_while_body    
    jmp     l_test_3                #   4:     goto   3
l_test_5_while_body:
    jmp     l_test_4_while_cond     #   6:     goto   4_while_cond
l_test_3:
    call    dummyBOOLfunc           #   8:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_test_1_while_cond     #   9:     goto   1_while_cond
l_test_0:
l_test_9_while_cond:
    movl    $90441, %eax            #  12:     div    t1 <- 90441, 8979
    movl    $8979, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  13:     mul    t2 <- t1, 23437
    movl    $23437, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    $32300, %eax            #  14:     if     32300 > t2 goto 10_while_body
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_test_10_while_body   
    jmp     l_test_8                #  15:     goto   8
l_test_10_while_body:
    movl    $100, %eax              #  17:     assign v0 <- 100
    movb    %al, v0                
    jmp     l_test_9_while_cond     #  18:     goto   9_while_cond
l_test_8:
    movl    $83037, %eax            #  20:     add    t3 <- 83037, 5164
    movl    $5164, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  21:     if     t3 = 34027 goto 14_if_true
    movl    $34027, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_14_if_true      
    jmp     l_test_15_if_false      #  22:     goto   15_if_false
l_test_14_if_true:
    movl    $97, %eax               #  24:     param  0 <- 97
    pushl   %eax                   
    call    WriteChar               #  25:     call   WriteChar
    addl    $4, %esp               
    jmp     l_test_exit            
    jmp     l_test_13               #  27:     goto   13
l_test_15_if_false:
l_test_13:
    movl    $90905, %eax            #  30:     sub    t4 <- 90905, 32447
    movl    $32447, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  31:     sub    t5 <- t4, 21676
    movl    $21676, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  32:     sub    t6 <- t5, 98430
    movl    $98430, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  33:     if     t6 = 467 goto 20_if_true
    movl    $467, %ebx             
    cmpl    %ebx, %eax             
    je      l_test_20_if_true      
    jmp     l_test_21_if_false      #  34:     goto   21_if_false
l_test_20_if_true:
    jmp     l_test_23               #  36:     goto   23
l_test_23:
    jmp     l_test_19               #  38:     goto   19
l_test_21_if_false:
l_test_19:
    jmp     l_test_exit            
l_test_28_while_cond:
    jmp     l_test_29_while_body    #  43:     goto   29_while_body
    jmp     l_test_27               #  44:     goto   27
l_test_29_while_body:
l_test_36_while_cond:
    jmp     l_test_36_while_cond    #  47:     goto   36_while_cond
    jmp     l_test_28_while_cond    #  48:     goto   28_while_cond
l_test_27:

l_test_exit:
    # epilogue
    addl    $28, %esp               # remove locals
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
v0:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
