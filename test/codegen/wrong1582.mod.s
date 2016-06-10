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
    #    -13(%ebp)   1  [ $t5       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t6       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t7       <bool> %ebp-15 ]
    #    -20(%ebp)   4  [ $t8       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t9       <bool> %ebp-21 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 74 of <array 75 of <array 58 of <array 24 of <array 86 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 35 of <array 19 of <array 58 of <array 80 of <array 26 of <int>>>>>>> %ebp+12 ]

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
    call    dummyBOOLfunc           #   0:     call   t5 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
l_f0_2_while_cond:
    movl    $98, %eax               #   2:     if     98 # 98 goto 3_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f0_3_while_body      
    jmp     l_f0_1                  #   3:     goto   1
l_f0_3_while_body:
    movl    $100, %eax              #   5:     if     100 # 99 goto 6
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f0_6                 
    jmp     l_f0_7                  #   6:     goto   7
l_f0_6:
    movl    $1, %eax                #   8:     assign t6 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f0_8                  #   9:     goto   8
l_f0_7:
    movl    $0, %eax                #  11:     assign t6 <- 0
    movb    %al, -14(%ebp)         
l_f0_8:
    movzbl  -14(%ebp), %eax         #  13:     return t6
    jmp     l_f0_exit              
    call    dummyBOOLfunc           #  14:     call   t7 <- dummyBOOLfunc
    movb    %al, -15(%ebp)         
    call    dummyINTfunc            #  15:     call   t8 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    jmp     l_f0_10                 #  16:     goto   10
l_f0_10:
    jmp     l_f0_2_while_cond       #  18:     goto   2_while_cond
l_f0_1:
    call    dummyBOOLfunc           #  20:     call   t9 <- dummyBOOLfunc
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
    #    -16(%ebp)   4  [ $t5       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t6       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t7       <char> %ebp-18 ]
    #    -19(%ebp)   1  [ $t8       <char> %ebp-19 ]
    #    -20(%ebp)   1  [ $t9       <bool> %ebp-20 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 87 of <array 54 of <array 77 of <array 22 of <array 63 of <int>>>>>>> %ebp+8 ]

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
    jmp     l_f1_5_if_false         #   1:     goto   5_if_false
    jmp     l_f1_3                  #   2:     goto   3
l_f1_5_if_false:
l_f1_3:
    call    ReadInt                 #   5:     call   t5 <- ReadInt
    movl    %eax, -16(%ebp)        
    call    dummyBOOLfunc           #   6:     call   t6 <- dummyBOOLfunc
    movb    %al, -17(%ebp)         
    jmp     l_f1_0                  #   7:     goto   0
l_f1_2_if_false:
l_f1_0:
    call    dummyCHARfunc           #  10:     call   t7 <- dummyCHARfunc
    movb    %al, -18(%ebp)         
    call    dummyCHARfunc           #  11:     call   t8 <- dummyCHARfunc
    movb    %al, -19(%ebp)         
    movl    $97, %eax               #  12:     if     97 <= t8 goto 10
    movzbl  -19(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f1_10                
    jmp     l_f1_11                 #  13:     goto   11
l_f1_10:
    movl    $1, %eax                #  15:     assign t9 <- 1
    movb    %al, -20(%ebp)         
    jmp     l_f1_12                 #  16:     goto   12
l_f1_11:
    movl    $0, %eax                #  18:     assign t9 <- 0
    movb    %al, -20(%ebp)         
l_f1_12:
    movzbl  -20(%ebp), %eax         #  20:     return t9
    jmp     l_f1_exit              

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
    #    -81(%ebp)   1  [ $t5       <char> %ebp-81 ]
    #    -88(%ebp)   4  [ $t6       <ptr(4) to <array 87 of <array 54 of <array 77 of <array 22 of <array 63 of <int>>>>>>> %ebp-88 ]
    #    -89(%ebp)   1  [ $t7       <bool> %ebp-89 ]
    #    -96(%ebp)   4  [ $t8       <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t9       <int> %ebp-100 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 9 of <array 20 of <array 85 of <array 38 of <array 83 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 90 of <array 56 of <array 75 of <array 77 of <array 90 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 61 of <array 40 of <array 92 of <array 2 of <array 8 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 38 of <array 17 of <array 66 of <array 26 of <array 35 of <bool>>>>>>> %ebp+20 ]
    #   -2005519948(%ebp)  2005519848  [ $v5       <array 87 of <array 54 of <array 77 of <array 22 of <array 63 of <int>>>>>> %ebp-2005519948 ]
    #   -2005519952(%ebp)   4  [ $v6       <int> %ebp-2005519952 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $2005519940, %esp       # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $501379985, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-2005519948(%ebp)    # local array 'v5': 5 dimensions
    movl    $87,-2005519944(%ebp)   #   dimension 1: 87 elements
    movl    $54,-2005519940(%ebp)   #   dimension 2: 54 elements
    movl    $77,-2005519936(%ebp)   #   dimension 3: 77 elements
    movl    $22,-2005519932(%ebp)   #   dimension 4: 22 elements
    movl    $63,-2005519928(%ebp)   #   dimension 5: 63 elements

    # function body
    jmp     l_f2_2_if_false         #   0:     goto   2_if_false
l_f2_4_while_cond:
    movl    $39448, %eax            #   2:     if     39448 <= 57077 goto 5_while_body
    movl    $57077, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_5_while_body      
    jmp     l_f2_3                  #   3:     goto   3
l_f2_5_while_body:
    jmp     l_f2_4_while_cond       #   5:     goto   4_while_cond
l_f2_3:
l_f2_8_while_cond:
    jmp     l_f2_8_while_cond       #   8:     goto   8_while_cond
    call    dummyCHARfunc           #   9:     call   t5 <- dummyCHARfunc
    movb    %al, -81(%ebp)         
    jmp     l_f2_0                  #  10:     goto   0
l_f2_2_if_false:
l_f2_0:
l_f2_12_while_cond:
    movl    $98, %eax               #  14:     if     98 > 100 goto 13_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_f2_13_while_body     
    jmp     l_f2_11                 #  15:     goto   11
l_f2_13_while_body:
    movl    $98, %eax               #  17:     if     98 > 100 goto 16_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_f2_16_if_true        
    jmp     l_f2_17_if_false        #  18:     goto   17_if_false
l_f2_16_if_true:
    jmp     l_f2_15                 #  20:     goto   15
l_f2_17_if_false:
l_f2_15:
    leal    -2005519948(%ebp), %eax #  23:     &()    t6 <- v5
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  24:     param  0 <- t6
    pushl   %eax                   
    call    f1                      #  25:     call   t7 <- f1
    addl    $4, %esp               
    movb    %al, -89(%ebp)         
    jmp     l_f2_12_while_cond      #  26:     goto   12_while_cond
l_f2_11:
    movl    $2, %eax                #  28:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  29:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  30:     call   t8 <- DIM
    addl    $8, %esp               
    movl    %eax, -96(%ebp)        
    movl    $16293, %eax            #  31:     mul    t9 <- 16293, t8
    movl    -96(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -100(%ebp)       
    movl    -100(%ebp), %eax        #  32:     add    t10 <- t9, 47625
    movl    $47625, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $3, %eax                #  33:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  34:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  35:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #  36:     mul    t12 <- t10, t11
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    $48747, %eax            #  37:     add    t13 <- 48747, 66947
    movl    $66947, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  38:     sub    t14 <- t13, 75072
    movl    $75072, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  39:     sub    t15 <- t14, 16097
    movl    $16097, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -24(%ebp), %eax         #  40:     add    t16 <- t12, t15
    movl    -36(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $4, %eax                #  41:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  42:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  43:     call   t17 <- DIM
    addl    $8, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  44:     mul    t18 <- t16, t17
    movl    -44(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  45:     add    t19 <- t18, 81589
    movl    $81589, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    $5, %eax                #  46:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  47:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  48:     call   t20 <- DIM
    addl    $8, %esp               
    movl    %eax, -56(%ebp)        
    movl    -52(%ebp), %eax         #  49:     mul    t21 <- t19, t20
    movl    -56(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  50:     add    t22 <- t21, 41401
    movl    $41401, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  51:     mul    t23 <- t22, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    8(%ebp), %eax           #  52:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  53:     call   t24 <- DOFS
    addl    $4, %esp               
    movl    %eax, -72(%ebp)        
    movl    -68(%ebp), %eax         #  54:     add    t25 <- t23, t24
    movl    -72(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    8(%ebp), %eax           #  55:     add    t26 <- v1, t25
    movl    -76(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    $4126, %eax             #  56:     assign @t26 <- 4126
    movl    -80(%ebp), %edi        
    movl    %eax, (%edi)           

l_f2_exit:
    # epilogue
    addl    $2005519940, %esp       # remove locals
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
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]

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
    jmp     l_test_2_if_false       #   0:     goto   2_if_false
    movl    $74338, %eax            #   1:     sub    t0 <- 74338, 6010
    movl    $6010, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     add    t1 <- t0, 91712
    movl    $91712, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     sub    t2 <- t1, 18204
    movl    $18204, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   4:     assign v0 <- t2
    movl    %eax, v0               
    jmp     l_test_0                #   5:     goto   0
l_test_2_if_false:
l_test_0:
    jmp     l_test_exit            
    call    dummyBOOLfunc           #   9:     call   t3 <- dummyBOOLfunc
    movb    %al, -25(%ebp)         
    jmp     l_test_8_if_false       #  10:     goto   8_if_false
    jmp     l_test_10               #  11:     goto   10
l_test_10:
    jmp     l_test_6                #  13:     goto   6
l_test_8_if_false:
l_test_6:
l_test_14_while_cond:
    movl    $100, %eax              #  17:     if     100 < 100 goto 15_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_test_15_while_body   
    jmp     l_test_13               #  18:     goto   13
l_test_15_while_body:
    movl    $33450, %eax            #  20:     assign v0 <- 33450
    movl    %eax, v0               
    movl    $98, %eax               #  21:     if     98 <= 99 goto 19_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_19_if_true      
    jmp     l_test_20_if_false      #  22:     goto   20_if_false
l_test_19_if_true:
    jmp     l_test_18               #  24:     goto   18
l_test_20_if_false:
l_test_18:
    call    dummyINTfunc            #  27:     call   t4 <- dummyINTfunc
    movl    %eax, -32(%ebp)        
    jmp     l_test_exit            
l_test_25_while_cond:
    jmp     l_test_24               #  30:     goto   24
    jmp     l_test_25_while_cond    #  31:     goto   25_while_cond
l_test_24:
    jmp     l_test_exit            
    jmp     l_test_14_while_cond    #  34:     goto   14_while_cond
l_test_13:
    jmp     l_test_exit            

l_test_exit:
    # epilogue
    addl    $20, %esp               # remove locals
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
