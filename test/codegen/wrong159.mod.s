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
    #    -16(%ebp)   4  [ $t4       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t5       <bool> %ebp-17 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 4 of <array 5 of <array 9 of <array 9 of <array 2 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 2 of <array 7 of <array 4 of <array 10 of <array 4 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <int> %ebp+20 ]

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
    movl    $24965, %eax            #   1:     if     24965 # 95328 goto 2_while_body
    movl    $95328, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f0_2_while_body      
    jmp     l_f0_0                  #   2:     goto   0
l_f0_2_while_body:
l_f0_5_while_cond:
    jmp     l_f0_4                  #   5:     goto   4
    jmp     l_f0_5_while_cond       #   6:     goto   5_while_cond
l_f0_4:
    jmp     l_f0_7                  #   8:     goto   7
l_f0_7:
l_f0_11_while_cond:
    jmp     l_f0_11_while_cond      #  11:     goto   11_while_cond
l_f0_17_while_cond:
    jmp     l_f0_16                 #  13:     goto   16
    jmp     l_f0_17_while_cond      #  14:     goto   17_while_cond
l_f0_16:
    movl    $97, %eax               #  16:     return 97
    jmp     l_f0_exit              
    movl    $100, %eax              #  17:     return 100
    jmp     l_f0_exit              
    jmp     l_f0_23_if_false        #  18:     goto   23_if_false
    jmp     l_f0_21                 #  19:     goto   21
l_f0_23_if_false:
l_f0_21:
    call    dummyINTfunc            #  22:     call   t4 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    jmp     l_f0_13                 #  23:     goto   13
l_f0_13:
    jmp     l_f0_1_while_cond       #  25:     goto   1_while_cond
l_f0_0:
    call    dummyBOOLfunc           #  27:     call   t5 <- dummyBOOLfunc
    movb    %al, -17(%ebp)         
l_f0_27_while_cond:
    movl    $100, %eax              #  29:     if     100 <= 100 goto 28_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f0_28_while_body     
    jmp     l_f0_26                 #  30:     goto   26
l_f0_28_while_body:
l_f0_31_while_cond:
    jmp     l_f0_30                 #  33:     goto   30
    jmp     l_f0_31_while_cond      #  34:     goto   31_while_cond
l_f0_30:
    movl    $98, %eax               #  36:     return 98
    jmp     l_f0_exit              
    movl    $100, %eax              #  37:     return 100
    jmp     l_f0_exit              
    jmp     l_f0_37_if_false        #  38:     goto   37_if_false
    jmp     l_f0_35                 #  39:     goto   35
l_f0_37_if_false:
l_f0_35:
    jmp     l_f0_27_while_cond      #  42:     goto   27_while_cond
l_f0_26:

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
    #    -13(%ebp)   1  [ $t4       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t5       <ptr(4) to <array 2 of <array 7 of <array 4 of <array 10 of <array 4 of <bool>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t6       <ptr(4) to <array 4 of <array 5 of <array 9 of <array 9 of <array 2 of <bool>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t7       <bool> %ebp-25 ]
    #    -26(%ebp)   1  [ $t8       <char> %ebp-26 ]
    #    -27(%ebp)   1  [ $t9       <char> %ebp-27 ]
    #    -28(%ebp)   1  [ $v1       <char> %ebp-28 ]
    #   -3292(%ebp)  3264  [ $v2       <array 4 of <array 5 of <array 9 of <array 9 of <array 2 of <bool>>>>>> %ebp-3292 ]
    #   -5556(%ebp)  2264  [ $v3       <array 2 of <array 7 of <array 4 of <array 10 of <array 4 of <bool>>>>>> %ebp-5556 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $5544, %esp             # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $1386, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-3292(%ebp)          # local array 'v2': 5 dimensions
    movl    $4,-3288(%ebp)          #   dimension 1: 4 elements
    movl    $5,-3284(%ebp)          #   dimension 2: 5 elements
    movl    $9,-3280(%ebp)          #   dimension 3: 9 elements
    movl    $9,-3276(%ebp)          #   dimension 4: 9 elements
    movl    $2,-3272(%ebp)          #   dimension 5: 2 elements
    movl    $5,-5556(%ebp)          # local array 'v3': 5 dimensions
    movl    $2,-5552(%ebp)          #   dimension 1: 2 elements
    movl    $7,-5548(%ebp)          #   dimension 2: 7 elements
    movl    $4,-5544(%ebp)          #   dimension 3: 4 elements
    movl    $10,-5540(%ebp)         #   dimension 4: 10 elements
    movl    $4,-5536(%ebp)          #   dimension 5: 4 elements

    # function body
l_f1_4_while_cond:
    jmp     l_f1_3                  #   1:     goto   3
    jmp     l_f1_4_while_cond       #   2:     goto   4_while_cond
l_f1_3:
    call    dummyCHARfunc           #   4:     call   t4 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    jmp     l_f1_0                  #   5:     goto   0
l_f1_0:
l_f1_8_while_cond:
    movl    $11384, %eax            #   8:     param  3 <- 11384
    pushl   %eax                   
    leal    -5556(%ebp), %eax       #   9:     &()    t5 <- v3
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  10:     param  2 <- t5
    pushl   %eax                   
    leal    -3292(%ebp), %eax       #  11:     &()    t6 <- v2
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  12:     param  1 <- t6
    pushl   %eax                   
    movl    $16608, %eax            #  13:     if     16608 < 1745 goto 11
    movl    $1745, %ebx            
    cmpl    %ebx, %eax             
    jl      l_f1_11                
    jmp     l_f1_12                 #  14:     goto   12
l_f1_11:
    movl    $1, %eax                #  16:     assign t7 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_f1_13                 #  17:     goto   13
l_f1_12:
    movl    $0, %eax                #  19:     assign t7 <- 0
    movb    %al, -25(%ebp)         
l_f1_13:
    movzbl  -25(%ebp), %eax         #  21:     param  0 <- t7
    pushl   %eax                   
    call    f0                      #  22:     call   t8 <- f0
    addl    $16, %esp              
    movb    %al, -26(%ebp)         
    movzbl  -26(%ebp), %eax         #  23:     assign v1 <- t8
    movb    %al, -28(%ebp)         
    jmp     l_f1_8_while_cond       #  24:     goto   8_while_cond
    call    dummyCHARfunc           #  25:     call   t9 <- dummyCHARfunc
    movb    %al, -27(%ebp)         
    movzbl  -27(%ebp), %eax         #  26:     assign v1 <- t9
    movb    %al, -28(%ebp)         

l_f1_exit:
    # epilogue
    addl    $5544, %esp             # remove locals
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
    #    -40(%ebp)   4  [ $t16      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t17      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t18      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t19      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t20      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t21      <int> %ebp-60 ]
    #    -61(%ebp)   1  [ $t22      <bool> %ebp-61 ]
    #    -62(%ebp)   1  [ $t4       <bool> %ebp-62 ]
    #    -68(%ebp)   4  [ $t5       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t6       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t7       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t8       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t9       <int> %ebp-84 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 2 of <array 10 of <array 8 of <array 8 of <array 5 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 3 of <array 9 of <array 4 of <array 8 of <array 9 of <int>>>>>>> %ebp+16 ]
    #    -85(%ebp)   1  [ $v4       <char> %ebp-85 ]

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
    movl    $0, %eax                #   0:     if     0 = 1 goto 1_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   1:     goto   2_if_false
l_f2_1_if_true:
    jmp     l_f2_6_if_false         #   3:     goto   6_if_false
    jmp     l_f2_4                  #   4:     goto   4
l_f2_6_if_false:
l_f2_4:
    call    dummyBOOLfunc           #   7:     call   t4 <- dummyBOOLfunc
    movb    %al, -62(%ebp)         
    movl    $2, %eax                #   8:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #   9:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  10:     call   t5 <- DIM
    addl    $8, %esp               
    movl    %eax, -68(%ebp)        
    movl    $61647, %eax            #  11:     mul    t6 <- 61647, t5
    movl    -68(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  12:     add    t7 <- t6, 41258
    movl    $41258, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    $3, %eax                #  13:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  14:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  15:     call   t8 <- DIM
    addl    $8, %esp               
    movl    %eax, -80(%ebp)        
    movl    -76(%ebp), %eax         #  16:     mul    t9 <- t7, t8
    movl    -80(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  17:     add    t10 <- t9, 74624
    movl    $74624, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $4, %eax                #  18:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  19:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  20:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #  21:     mul    t12 <- t10, t11
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  22:     add    t13 <- t12, 88482
    movl    $88482, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $5, %eax                #  23:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  24:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  25:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  26:     mul    t15 <- t13, t14
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  27:     add    t16 <- t15, 88954
    movl    $88954, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  28:     mul    t17 <- t16, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    12(%ebp), %eax          #  29:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  30:     call   t18 <- DOFS
    addl    $4, %esp               
    movl    %eax, -48(%ebp)        
    movl    -44(%ebp), %eax         #  31:     add    t19 <- t17, t18
    movl    -48(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    12(%ebp), %eax          #  32:     add    t20 <- v2, t19
    movl    -52(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    $98, %eax               #  33:     assign @t20 <- 98
    movl    -56(%ebp), %edi        
    movb    %al, (%edi)            
    jmp     l_f2_0                  #  34:     goto   0
l_f2_2_if_false:
l_f2_0:
    call    ReadInt                 #  37:     call   t21 <- ReadInt
    movl    %eax, -60(%ebp)        
    call    dummyBOOLfunc           #  38:     call   t22 <- dummyBOOLfunc
    movb    %al, -61(%ebp)         

l_f2_exit:
    # epilogue
    addl    $76, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <bool> %ebp-17 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $16, %esp               # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 12(%esp)         
    movl    %eax, 8(%esp)          
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
    movl    $99, %eax               #   0:     if     99 <= 100 goto 1_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_test_1_if_true       
    jmp     l_test_2_if_false       #   1:     goto   2_if_false
l_test_1_if_true:
    call    ReadInt                 #   3:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   4:     param  0 <- t0
    pushl   %eax                   
    call    WriteInt                #   5:     call   WriteInt
    addl    $4, %esp               
l_test_6_while_cond:
    jmp     l_test_6_while_cond     #   7:     goto   6_while_cond
    jmp     l_test_0                #   8:     goto   0
l_test_2_if_false:
l_test_0:
    jmp     l_test_9                #  11:     goto   9
    jmp     l_test_9                #  12:     goto   9
    jmp     l_test_9                #  13:     goto   9
    movl    $59305, %eax            #  14:     if     59305 > 73040 goto 9
    movl    $73040, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_9               
    jmp     l_test_10               #  15:     goto   10
l_test_9:
    movl    $1, %eax                #  17:     assign t1 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_test_11               #  18:     goto   11
l_test_10:
    movl    $0, %eax                #  20:     assign t1 <- 0
    movb    %al, -17(%ebp)         
l_test_11:
    movzbl  -17(%ebp), %eax         #  22:     assign v0 <- t1
    movb    %al, v0                
    jmp     l_test_exit            
    jmp     l_test_exit            
    call    f1                      #  25:     call   f1
    call    ReadInt                 #  26:     call   t2 <- ReadInt
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  27:     add    t3 <- t2, 56597
    movl    $56597, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  28:     if     t3 <= 25185 goto 21_if_true
    movl    $25185, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_21_if_true      
    jmp     l_test_22_if_false      #  29:     goto   22_if_false
l_test_21_if_true:
    jmp     l_test_20               #  31:     goto   20
l_test_22_if_false:
l_test_20:

l_test_exit:
    # epilogue
    addl    $16, %esp               # remove locals
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
