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
    #    -13(%ebp)   1  [ $t4       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t5       <char> %ebp-14 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v3       <ptr(4) to <array 91 of <array 37 of <array 46 of <array 20 of <array 7 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v4       <int> %ebp+12 ]

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
    movl    $12318, %eax            #   1:     if     12318 <= 88197 goto 4
    movl    $88197, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_4                 
    jmp     l_f0_5                  #   2:     goto   5
l_f0_4:
    movl    $1, %eax                #   4:     assign t4 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_6                  #   5:     goto   6
l_f0_5:
    movl    $0, %eax                #   7:     assign t4 <- 0
    movb    %al, -13(%ebp)         
l_f0_6:
    movzbl  -13(%ebp), %eax         #   9:     return t4
    jmp     l_f0_exit              
    movl    $0, %eax                #  10:     return 0
    jmp     l_f0_exit              
    movl    $1, %eax                #  11:     return 1
    jmp     l_f0_exit              
l_f0_11_while_cond:
    movl    $1, %eax                #  13:     if     1 = 0 goto 12_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_12_while_body     
    jmp     l_f0_10                 #  14:     goto   10
l_f0_12_while_body:
    jmp     l_f0_11_while_cond      #  16:     goto   11_while_cond
l_f0_10:
    call    dummyCHARfunc           #  18:     call   t5 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    jmp     l_f0_1_while_cond       #  19:     goto   1_while_cond
    call    dummyINTfunc            #  20:     call   t6 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
l_f0_17_while_cond:
    jmp     l_f0_18_while_body      #  22:     goto   18_while_body
    jmp     l_f0_18_while_body      #  23:     goto   18_while_body
    jmp     l_f0_18_while_body      #  24:     goto   18_while_body
    jmp     l_f0_16                 #  25:     goto   16
l_f0_18_while_body:
    jmp     l_f0_17_while_cond      #  27:     goto   17_while_cond
l_f0_16:

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
    #    -13(%ebp)   1  [ $t4       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t6       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t7       <bool> %ebp-25 ]
    #    -26(%ebp)   1  [ $t8       <bool> %ebp-26 ]
    #      8(%ebp)   1  [ %v3       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v4       <int> %ebp+12 ]

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
    movl    $56195, %eax            #   0:     if     56195 < 41312 goto 1_if_true
    movl    $41312, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   1:     goto   2_if_false
l_f1_1_if_true:
    movl    $22274, %eax            #   3:     if     22274 > 67466 goto 5
    movl    $67466, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_5                 
    jmp     l_f1_6                  #   4:     goto   6
l_f1_5:
    movl    $1, %eax                #   6:     assign t4 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_7                  #   7:     goto   7
l_f1_6:
    movl    $0, %eax                #   9:     assign t4 <- 0
    movb    %al, -13(%ebp)         
l_f1_7:
    movzbl  -13(%ebp), %eax         #  11:     return t4
    jmp     l_f1_exit              
l_f1_10_while_cond:
    movl    $45430, %eax            #  13:     if     45430 < 94863 goto 11_while_body
    movl    $94863, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_11_while_body     
    jmp     l_f1_9                  #  14:     goto   9
l_f1_11_while_body:
    jmp     l_f1_10_while_cond      #  16:     goto   10_while_cond
l_f1_9:
l_f1_14_while_cond:
    jmp     l_f1_14_while_cond      #  19:     goto   14_while_cond
l_f1_17_while_cond:
    movl    $46457, %eax            #  21:     if     46457 >= 96719 goto 18_while_body
    movl    $96719, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_18_while_body     
    jmp     l_f1_16                 #  22:     goto   16
l_f1_18_while_body:
    jmp     l_f1_17_while_cond      #  24:     goto   17_while_cond
l_f1_16:
    jmp     l_f1_0                  #  26:     goto   0
l_f1_2_if_false:
l_f1_0:
    movl    $39279, %eax            #  29:     mul    t5 <- 39279, 60301
    movl    $60301, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    $70221, %eax            #  30:     sub    t6 <- 70221, t5
    movl    -20(%ebp), %ebx        
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  31:     if     t6 # 25819 goto 21
    movl    $25819, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f1_21                
    jmp     l_f1_22                 #  32:     goto   22
l_f1_21:
    movl    $1, %eax                #  34:     assign t7 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_f1_23                 #  35:     goto   23
l_f1_22:
    movl    $0, %eax                #  37:     assign t7 <- 0
    movb    %al, -25(%ebp)         
l_f1_23:
    movzbl  -25(%ebp), %eax         #  39:     return t7
    jmp     l_f1_exit              
    jmp     l_f1_27_if_false        #  40:     goto   27_if_false
    call    dummyBOOLfunc           #  41:     call   t8 <- dummyBOOLfunc
    movb    %al, -26(%ebp)         
    jmp     l_f1_25                 #  42:     goto   25
l_f1_27_if_false:
l_f1_25:

l_f1_exit:
    # epilogue
    addl    $16, %esp               # remove locals
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
    #    -64(%ebp)   4  [ $t4       <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t5       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t6       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t7       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t8       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t9       <int> %ebp-84 ]
    #      8(%ebp)   4  [ %v3       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v4       <ptr(4) to <array 11 of <array 79 of <array 23 of <array 46 of <array 92 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v5       <bool> %ebp+16 ]
    #     20(%ebp)   1  [ %v6       <char> %ebp+20 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $72, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $18, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
l_f2_1_while_cond:
    movl    $98, %eax               #   1:     if     98 >= 99 goto 2_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_2_while_body      
    jmp     l_f2_0                  #   2:     goto   0
l_f2_2_while_body:
    movl    $97, %eax               #   4:     return 97
    jmp     l_f2_exit              
    movl    $2, %eax                #   5:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #   6:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #   7:     call   t4 <- DIM
    addl    $8, %esp               
    movl    %eax, -64(%ebp)        
    movl    $59351, %eax            #   8:     mul    t5 <- 59351, t4
    movl    -64(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #   9:     add    t6 <- t5, 13134
    movl    $13134, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    $3, %eax                #  10:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  11:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  12:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -76(%ebp)        
    movl    -72(%ebp), %eax         #  13:     mul    t8 <- t6, t7
    movl    -76(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  14:     add    t9 <- t8, 25239
    movl    $25239, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    $4, %eax                #  15:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  16:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  17:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    -84(%ebp), %eax         #  18:     mul    t11 <- t9, t10
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  19:     add    t12 <- t11, 32095
    movl    $32095, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $5, %eax                #  20:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  21:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  22:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  23:     mul    t14 <- t12, t13
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  24:     add    t15 <- t14, 52053
    movl    $52053, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  25:     mul    t16 <- t15, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    12(%ebp), %eax          #  26:     param  0 <- v4
    pushl   %eax                   
    call    DOFS                    #  27:     call   t17 <- DOFS
    addl    $4, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  28:     add    t18 <- t16, t17
    movl    -44(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    12(%ebp), %eax          #  29:     add    t19 <- v4, t18
    movl    -48(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    $99, %eax               #  30:     assign @t19 <- 99
    movl    -52(%ebp), %edi        
    movb    %al, (%edi)            
    jmp     l_f2_1_while_cond       #  31:     goto   1_while_cond
l_f2_0:
    movl    $62613, %eax            #  33:     mul    t20 <- 62613, 4679
    movl    $4679, %ebx            
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    $60021, %eax            #  34:     add    t21 <- 60021, t20
    movl    -56(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  35:     assign v3 <- t21
    movl    %eax, 8(%ebp)          
    movl    $99, %eax               #  36:     return 99
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $72, %esp               # remove locals
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
    #    -24(%ebp)   4  [ $t2       <ptr(4) to <array 91 of <array 37 of <array 46 of <array 20 of <array 7 of <char>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t3       <bool> %ebp-25 ]

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
l_test_1_while_cond:
    movl    $99, %eax               #   1:     if     99 > 99 goto 2_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_2_while_body    
    jmp     l_test_0                #   2:     goto   0
l_test_2_while_body:
l_test_5_while_cond:
    movl    $99801, %eax            #   5:     if     99801 >= 80838 goto 6_while_body
    movl    $80838, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_6_while_body    
    jmp     l_test_4                #   6:     goto   4
l_test_6_while_body:
    jmp     l_test_exit            
    movl    $99, %eax               #   9:     assign v0 <- 99
    movb    %al, v0                
    movl    $98, %eax               #  10:     assign v0 <- 98
    movb    %al, v0                
    jmp     l_test_11               #  11:     goto   11
l_test_11:
    movl    $1, %eax                #  13:     assign v1 <- 1
    movb    %al, v1                
l_test_16_while_cond:
    jmp     l_test_15               #  15:     goto   15
    jmp     l_test_16_while_cond    #  16:     goto   16_while_cond
l_test_15:
l_test_19_while_cond:
    movl    $100, %eax              #  19:     if     100 <= 97 goto 20_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_20_while_body   
    jmp     l_test_18               #  20:     goto   18
l_test_20_while_body:
    jmp     l_test_19_while_cond    #  22:     goto   19_while_cond
l_test_18:
    movl    $1, %eax                #  24:     if     1 # 0 goto 23_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_23_if_true      
    jmp     l_test_24_if_false      #  25:     goto   24_if_false
l_test_23_if_true:
    jmp     l_test_22               #  27:     goto   22
l_test_24_if_false:
l_test_22:
    movl    $97456, %eax            #  30:     assign v2 <- 97456
    movl    %eax, v2               
    jmp     l_test_5_while_cond     #  31:     goto   5_while_cond
l_test_4:
    jmp     l_test_1_while_cond     #  33:     goto   1_while_cond
l_test_0:
    movl    $2252, %eax             #  35:     div    t0 <- 2252, 40171
    movl    $40171, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  36:     mul    t1 <- t0, 25278
    movl    $25278, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  37:     if     t1 >= 22485 goto 28_if_true
    movl    $22485, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_28_if_true      
    jmp     l_test_29_if_false      #  38:     goto   29_if_false
l_test_28_if_true:
    movl    $1, %eax                #  40:     assign v1 <- 1
    movb    %al, v1                
    jmp     l_test_27               #  41:     goto   27
l_test_29_if_false:
l_test_27:
    jmp     l_test_exit            
    movl    $75305, %eax            #  45:     param  1 <- 75305
    pushl   %eax                   
    leal    v3, %eax                #  46:     &()    t2 <- v3
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  47:     param  0 <- t2
    pushl   %eax                   
    call    f0                      #  48:     call   t3 <- f0
    addl    $8, %esp               
    movb    %al, -25(%ebp)         
    jmp     l_test_exit            
    jmp     l_test_exit            

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
v0:                                 # <char>
    .skip    1
v1:                                 # <bool>
    .skip    1
    .align   4
v2:                                 # <int>
    .skip    4
v3:                                 # <array 91 of <array 37 of <array 46 of <array 20 of <array 7 of <char>>>>>>
    .long    5
    .long   91
    .long   37
    .long   46
    .long   20
    .long    7
    .skip 21683480








    # end of global data section
    #-----------------------------------------

    .end
##################################################
