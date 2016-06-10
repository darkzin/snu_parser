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
    #    -16(%ebp)   4  [ $t13      <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t14      <bool> %ebp-17 ]
    #    -24(%ebp)   4  [ $t15      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t16      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t17      <int> %ebp-32 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]
    #    -36(%ebp)   4  [ $v3       <int> %ebp-36 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $24, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $6, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $82242, %eax            #   0:     mul    t13 <- 82242, 87292
    movl    $87292, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    $76731, %eax            #   1:     if     76731 # t13 goto 1
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f0_1                 
    jmp     l_f0_2                  #   2:     goto   2
l_f0_1:
    movl    $1, %eax                #   4:     assign t14 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f0_3                  #   5:     goto   3
l_f0_2:
    movl    $0, %eax                #   7:     assign t14 <- 0
    movb    %al, -17(%ebp)         
l_f0_3:
    movzbl  -17(%ebp), %eax         #   9:     assign v1 <- t14
    movb    %al, 8(%ebp)           
    call    WriteLn                 #  10:     call   WriteLn
    movl    $11041, %eax            #  11:     sub    t15 <- 11041, 10222
    movl    $10222, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  12:     sub    t16 <- t15, 11969
    movl    $11969, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  13:     sub    t17 <- t16, 33926
    movl    $33926, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  14:     assign v3 <- t17
    movl    %eax, -36(%ebp)        

l_f0_exit:
    # epilogue
    addl    $24, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t13      <bool> %ebp-13 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]
    #    -20(%ebp)   4  [ $v3       <int> %ebp-20 ]

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
    movl    $99, %eax               #   1:     assign v2 <- 99
    movb    %al, 12(%ebp)          
    movl    $88249, %eax            #   2:     assign v3 <- 88249
    movl    %eax, -20(%ebp)        
    jmp     l_f1_0                  #   3:     goto   0
l_f1_2_if_false:
l_f1_0:
    call    dummyProcedure          #   6:     call   dummyProcedure
    movl    $97, %eax               #   7:     if     97 >= 97 goto 7
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f1_7                 
    jmp     l_f1_8                  #   8:     goto   8
l_f1_7:
    movl    $1, %eax                #  10:     assign t13 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_9                  #  11:     goto   9
l_f1_8:
    movl    $0, %eax                #  13:     assign t13 <- 0
    movb    %al, -13(%ebp)         
l_f1_9:
    movzbl  -13(%ebp), %eax         #  15:     return t13
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
    #    -16(%ebp)   4  [ $t13      <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t14      <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t15      <bool> %ebp-18 ]
    #    -19(%ebp)   1  [ $t16      <bool> %ebp-19 ]
    #    -20(%ebp)   1  [ $t17      <bool> %ebp-20 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 12 of <array 65 of <array 15 of <array 82 of <array 86 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 62 of <array 94 of <array 86 of <array 42 of <array 2 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <int> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 71 of <array 92 of <array 12 of <array 20 of <array 17 of <bool>>>>>>> %ebp+20 ]

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
    movl    $7145, %eax             #   0:     assign v3 <- 7145
    movl    %eax, 16(%ebp)         
    movl    $97669, %eax            #   1:     add    t13 <- 97669, 71842
    movl    $71842, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     param  0 <- t13
    pushl   %eax                   
    call    WriteInt                #   3:     call   WriteInt
    addl    $4, %esp               
    movl    $99, %eax               #   4:     param  1 <- 99
    pushl   %eax                   
    jmp     l_f2_4                  #   5:     goto   4
    movl    $100, %eax              #   6:     param  1 <- 100
    pushl   %eax                   
    jmp     l_f2_8                  #   7:     goto   8
    jmp     l_f2_8                  #   8:     goto   8
    jmp     l_f2_8                  #   9:     goto   8
l_f2_8:
    movl    $1, %eax                #  11:     assign t14 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f2_10                 #  12:     goto   10
    movl    $0, %eax                #  13:     assign t14 <- 0
    movb    %al, -17(%ebp)         
l_f2_10:
    movzbl  -17(%ebp), %eax         #  15:     param  0 <- t14
    pushl   %eax                   
    call    f1                      #  16:     call   t15 <- f1
    addl    $8, %esp               
    movb    %al, -18(%ebp)         
    movzbl  -18(%ebp), %eax         #  17:     if     t15 = 1 goto 3
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_3                 
    jmp     l_f2_4                  #  18:     goto   4
l_f2_3:
    movl    $1, %eax                #  20:     assign t16 <- 1
    movb    %al, -19(%ebp)         
    jmp     l_f2_5                  #  21:     goto   5
l_f2_4:
    movl    $0, %eax                #  23:     assign t16 <- 0
    movb    %al, -19(%ebp)         
l_f2_5:
    movzbl  -19(%ebp), %eax         #  25:     param  0 <- t16
    pushl   %eax                   
    call    f1                      #  26:     call   t17 <- f1
    addl    $8, %esp               
    movb    %al, -20(%ebp)         

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
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 71 of <array 92 of <array 12 of <array 20 of <array 17 of <bool>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t10      <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t11      <bool> %ebp-25 ]
    #    -32(%ebp)   4  [ $t12      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t2       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t3       <ptr(4) to <array 62 of <array 94 of <array 86 of <array 42 of <array 2 of <char>>>>>>> %ebp-40 ]
    #    -44(%ebp)   4  [ $t4       <ptr(4) to <array 12 of <array 65 of <array 15 of <array 82 of <array 86 of <bool>>>>>>> %ebp-44 ]
    #    -45(%ebp)   1  [ $t5       <char> %ebp-45 ]
    #    -52(%ebp)   4  [ $t6       <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t7       <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t8       <int> %ebp-60 ]
    #    -61(%ebp)   1  [ $t9       <bool> %ebp-61 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $52, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $13, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
l_test_1_while_cond:
    movl    $77073, %eax            #   1:     if     77073 = 99746 goto 2_while_body
    movl    $99746, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_2_while_body    
    jmp     l_test_0                #   2:     goto   0
l_test_2_while_body:
    jmp     l_test_5_if_true        #   4:     goto   5_if_true
l_test_5_if_true:
    jmp     l_test_4                #   6:     goto   4
l_test_4:
    jmp     l_test_1_while_cond     #   8:     goto   1_while_cond
l_test_0:
    jmp     l_test_exit            
    jmp     l_test_12_if_true       #  11:     goto   12_if_true
l_test_12_if_true:
l_test_16_while_cond:
    movl    $625, %eax              #  14:     if     625 >= 14661 goto 17_while_body
    movl    $14661, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_17_while_body   
    jmp     l_test_15               #  15:     goto   15
l_test_17_while_body:
    jmp     l_test_16_while_cond    #  17:     goto   16_while_cond
l_test_15:
    movl    $14935, %eax            #  19:     if     14935 # 48873 goto 20_if_true
    movl    $48873, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_20_if_true      
    jmp     l_test_21_if_false      #  20:     goto   21_if_false
l_test_20_if_true:
    jmp     l_test_19               #  22:     goto   19
l_test_21_if_false:
l_test_19:
    movl    $98, %eax               #  25:     if     98 < 99 goto 24
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_24              
    jmp     l_test_25               #  26:     goto   25
l_test_24:
    movl    $1, %eax                #  28:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_26               #  29:     goto   26
l_test_25:
    movl    $0, %eax                #  31:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_26:
    movzbl  -13(%ebp), %eax         #  33:     assign v0 <- t0
    movb    %al, v0                
    jmp     l_test_11               #  34:     goto   11
l_test_11:
l_test_29_while_cond:
    jmp     l_test_28               #  37:     goto   28
    movl    $100, %eax              #  38:     if     100 > 100 goto 33_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_test_33_if_true      
    jmp     l_test_34_if_false      #  39:     goto   34_if_false
l_test_33_if_true:
    jmp     l_test_32               #  41:     goto   32
l_test_34_if_false:
l_test_32:
    jmp     l_test_exit            
    jmp     l_test_29_while_cond    #  45:     goto   29_while_cond
l_test_28:
    jmp     l_test_exit            
    leal    v3, %eax                #  48:     &()    t1 <- v3
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  49:     param  3 <- t1
    pushl   %eax                   
    movl    $51616, %eax            #  50:     add    t2 <- 51616, 9401
    movl    $9401, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  51:     param  2 <- t2
    pushl   %eax                   
    leal    v2, %eax                #  52:     &()    t3 <- v2
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  53:     param  1 <- t3
    pushl   %eax                   
    leal    v1, %eax                #  54:     &()    t4 <- v1
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  55:     param  0 <- t4
    pushl   %eax                   
    call    f2                      #  56:     call   t5 <- f2
    addl    $16, %esp              
    movb    %al, -45(%ebp)         
    movzbl  -45(%ebp), %eax         #  57:     param  1 <- t5
    pushl   %eax                   
    movl    $55288, %eax            #  58:     add    t6 <- 55288, 59708
    movl    $59708, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  59:     sub    t7 <- t6, 74628
    movl    $74628, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  60:     add    t8 <- t7, 46802
    movl    $46802, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    $97, %eax               #  61:     param  1 <- 97
    pushl   %eax                   
    movl    $100, %eax              #  62:     if     100 <= 98 goto 43
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_43              
    jmp     l_test_44               #  63:     goto   44
l_test_43:
    movl    $1, %eax                #  65:     assign t9 <- 1
    movb    %al, -61(%ebp)         
    jmp     l_test_45               #  66:     goto   45
l_test_44:
    movl    $0, %eax                #  68:     assign t9 <- 0
    movb    %al, -61(%ebp)         
l_test_45:
    movzbl  -61(%ebp), %eax         #  70:     param  0 <- t9
    pushl   %eax                   
    call    f0                      #  71:     call   t10 <- f0
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -60(%ebp), %eax         #  72:     if     t8 > t10 goto 39
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_test_39              
    jmp     l_test_40               #  73:     goto   40
l_test_39:
    movl    $1, %eax                #  75:     assign t11 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_test_41               #  76:     goto   41
l_test_40:
    movl    $0, %eax                #  78:     assign t11 <- 0
    movb    %al, -25(%ebp)         
l_test_41:
    movzbl  -25(%ebp), %eax         #  80:     param  0 <- t11
    pushl   %eax                   
    call    f0                      #  81:     call   t12 <- f0
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        

l_test_exit:
    # epilogue
    addl    $52, %esp               # remove locals
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
v1:                                 # <array 12 of <array 65 of <array 15 of <array 82 of <array 86 of <bool>>>>>>
    .long    5
    .long   12
    .long   65
    .long   15
    .long   82
    .long   86
    .skip 82508400
v2:                                 # <array 62 of <array 94 of <array 86 of <array 42 of <array 2 of <char>>>>>>
    .long    5
    .long   62
    .long   94
    .long   86
    .long   42
    .long    2
    .skip 42101472
v3:                                 # <array 71 of <array 92 of <array 12 of <array 20 of <array 17 of <bool>>>>>>
    .long    5
    .long   71
    .long   92
    .long   12
    .long   20
    .long   17
    .skip 26650560








    # end of global data section
    #-----------------------------------------

    .end
##################################################
