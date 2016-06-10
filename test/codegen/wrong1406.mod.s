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
    #    -53(%ebp)   1  [ $t2       <bool> %ebp-53 ]
    #    -60(%ebp)   4  [ $t20      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t21      <int> %ebp-64 ]
    #    -65(%ebp)   1  [ $t22      <bool> %ebp-65 ]
    #    -66(%ebp)   1  [ $t23      <char> %ebp-66 ]
    #    -72(%ebp)   4  [ $t3       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t4       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t5       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t6       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t7       <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t8       <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t9       <int> %ebp-96 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 69 of <array 3 of <array 68 of <array 92 of <array 52 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 4 of <array 89 of <array 21 of <array 98 of <array 81 of <bool>>>>>>> %ebp+12 ]
    #    -97(%ebp)   1  [ $v3       <bool> %ebp-97 ]
    #   -104(%ebp)   4  [ $v4       <int> %ebp-104 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $92, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $23, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $41298, %eax            #   0:     if     41298 < 25389 goto 1
    movl    $25389, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_1                 
    jmp     l_f0_2                  #   1:     goto   2
l_f0_1:
    movl    $1, %eax                #   3:     assign t2 <- 1
    movb    %al, -53(%ebp)         
    jmp     l_f0_3                  #   4:     goto   3
l_f0_2:
    movl    $0, %eax                #   6:     assign t2 <- 0
    movb    %al, -53(%ebp)         
l_f0_3:
    movl    $2, %eax                #   8:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #   9:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  10:     call   t3 <- DIM
    addl    $8, %esp               
    movl    %eax, -72(%ebp)        
    movl    $57229, %eax            #  11:     mul    t4 <- 57229, t3
    movl    -72(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    $72700, %eax            #  12:     sub    t5 <- 72700, 24314
    movl    $24314, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  13:     sub    t6 <- t5, 9091
    movl    $9091, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  14:     sub    t7 <- t6, 28751
    movl    $28751, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    -76(%ebp), %eax         #  15:     add    t8 <- t4, t7
    movl    -88(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    $3, %eax                #  16:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  17:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  18:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -96(%ebp)        
    movl    -92(%ebp), %eax         #  19:     mul    t10 <- t8, t9
    movl    -96(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  20:     add    t11 <- t10, 1320
    movl    $1320, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $4, %eax                #  21:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  22:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  23:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  24:     mul    t13 <- t11, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  25:     add    t14 <- t13, 9357
    movl    $9357, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $5, %eax                #  26:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  27:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  28:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  29:     mul    t16 <- t14, t15
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  30:     add    t17 <- t16, 62037
    movl    $62037, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  31:     mul    t18 <- t17, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    12(%ebp), %eax          #  32:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  33:     call   t19 <- DOFS
    addl    $4, %esp               
    movl    %eax, -52(%ebp)        
    movl    -48(%ebp), %eax         #  34:     add    t20 <- t18, t19
    movl    -52(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    12(%ebp), %eax          #  35:     add    t21 <- v2, t20
    movl    -60(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movzbl  -53(%ebp), %eax         #  36:     assign @t21 <- t2
    movl    -64(%ebp), %edi        
    movb    %al, (%edi)            
    jmp     l_f0_10                 #  37:     goto   10
    jmp     l_f0_6                  #  38:     goto   6
l_f0_10:
l_f0_6:
    movl    $1, %eax                #  41:     assign t22 <- 1
    movb    %al, -65(%ebp)         
    jmp     l_f0_8                  #  42:     goto   8
    movl    $0, %eax                #  43:     assign t22 <- 0
    movb    %al, -65(%ebp)         
l_f0_8:
    movzbl  -65(%ebp), %eax         #  45:     return t22
    jmp     l_f0_exit              
    call    dummyCHARfunc           #  46:     call   t23 <- dummyCHARfunc
    movb    %al, -66(%ebp)         
    movl    $97, %eax               #  47:     if     97 < t23 goto 13_if_true
    movzbl  -66(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f0_13_if_true        
    jmp     l_f0_14_if_false        #  48:     goto   14_if_false
l_f0_13_if_true:
    jmp     l_f0_16                 #  50:     goto   16
l_f0_16:
    movl    $8803, %eax             #  52:     assign v4 <- 8803
    movl    %eax, -104(%ebp)       
    jmp     l_f0_12                 #  53:     goto   12
l_f0_14_if_false:
l_f0_12:

l_f0_exit:
    # epilogue
    addl    $92, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t3       <bool> %ebp-17 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 25 of <array 76 of <array 70 of <array 28 of <array 20 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 29 of <array 17 of <array 55 of <array 34 of <array 18 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 2 of <array 99 of <array 5 of <array 48 of <array 92 of <int>>>>>>> %ebp+16 ]

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
    call    ReadInt                 #   0:     call   t2 <- ReadInt
    movl    %eax, -16(%ebp)        
l_f1_2_while_cond:
    jmp     l_f1_6_if_false         #   2:     goto   6_if_false
    jmp     l_f1_4                  #   3:     goto   4
l_f1_6_if_false:
l_f1_4:
    jmp     l_f1_2_while_cond       #   6:     goto   2_while_cond
l_f1_9_while_cond:
    movl    $99, %eax               #   8:     if     99 > 99 goto 10_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f1_10_while_body     
    jmp     l_f1_8                  #   9:     goto   8
l_f1_10_while_body:
    movl    $5505, %eax             #  11:     return 5505
    jmp     l_f1_exit              
    call    dummyBOOLfunc           #  12:     call   t3 <- dummyBOOLfunc
    movb    %al, -17(%ebp)         
    jmp     l_f1_9_while_cond       #  13:     goto   9_while_cond
l_f1_8:

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
    #    -13(%ebp)   1  [ $t2       <bool> %ebp-13 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 96 of <array 77 of <array 90 of <array 47 of <array 83 of <int>>>>>>> %ebp+16 ]
    #    -14(%ebp)   1  [ $v4       <bool> %ebp-14 ]

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
    call    WriteLn                 #   0:     call   WriteLn
    jmp     l_f2_exit              
    movl    $65311, %eax            #   2:     if     65311 > 23249 goto 3
    movl    $23249, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_3                 
    jmp     l_f2_4                  #   3:     goto   4
l_f2_3:
    movl    $1, %eax                #   5:     assign t2 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_5                  #   6:     goto   5
l_f2_4:
    movl    $0, %eax                #   8:     assign t2 <- 0
    movb    %al, -13(%ebp)         
l_f2_5:
    movzbl  -13(%ebp), %eax         #  10:     assign v4 <- t2
    movb    %al, -14(%ebp)         

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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <char> %ebp-17 ]

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
l_test_1_while_cond:
    movl    $97, %eax               #   1:     if     97 < 97 goto 2_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_2_while_body    
    jmp     l_test_0                #   2:     goto   0
l_test_2_while_body:
    jmp     l_test_1_while_cond     #   4:     goto   1_while_cond
l_test_0:
l_test_5_while_cond:
    movl    $24997, %eax            #   7:     if     24997 = 83746 goto 6_while_body
    movl    $83746, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_6_while_body    
    jmp     l_test_4                #   8:     goto   4
l_test_6_while_body:
    jmp     l_test_exit            
    jmp     l_test_exit            
l_test_11_while_cond:
    movl    $28139, %eax            #  13:     if     28139 = 60348 goto 12_while_body
    movl    $60348, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_12_while_body   
    jmp     l_test_10               #  14:     goto   10
l_test_12_while_body:
    jmp     l_test_11_while_cond    #  16:     goto   11_while_cond
l_test_10:
l_test_15_while_cond:
    movl    $53712, %eax            #  19:     if     53712 > 59021 goto 16_while_body
    movl    $59021, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_16_while_body   
    jmp     l_test_14               #  20:     goto   14
l_test_16_while_body:
    jmp     l_test_15_while_cond    #  22:     goto   15_while_cond
l_test_14:
l_test_19_while_cond:
    movl    $98, %eax               #  25:     if     98 >= 98 goto 20_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_20_while_body   
    jmp     l_test_18               #  26:     goto   18
l_test_20_while_body:
    jmp     l_test_19_while_cond    #  28:     goto   19_while_cond
l_test_18:
    jmp     l_test_5_while_cond     #  30:     goto   5_while_cond
l_test_4:
l_test_23_while_cond:
    movl    $77430, %eax            #  33:     assign v0 <- 77430
    movl    %eax, v0               
    call    ReadInt                 #  34:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  35:     param  0 <- t0
    pushl   %eax                   
    call    WriteInt                #  36:     call   WriteInt
    addl    $4, %esp               
    jmp     l_test_23_while_cond    #  37:     goto   23_while_cond
    movl    $0, %eax                #  38:     assign v1 <- 0
    movb    %al, v1                
l_test_32_while_cond:
    movl    $99, %eax               #  40:     if     99 # 100 goto 33_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jne     l_test_33_while_body   
    jmp     l_test_31               #  41:     goto   31
l_test_33_while_body:
l_test_36_while_cond:
    movl    $90834, %eax            #  44:     if     90834 <= 70764 goto 37_while_body
    movl    $70764, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_37_while_body   
    jmp     l_test_35               #  45:     goto   35
l_test_37_while_body:
    jmp     l_test_36_while_cond    #  47:     goto   36_while_cond
l_test_35:
    jmp     l_test_exit            
    jmp     l_test_32_while_cond    #  50:     goto   32_while_cond
l_test_31:
    jmp     l_test_28               #  52:     goto   28
l_test_28:
    call    dummyCHARfunc           #  54:     call   t1 <- dummyCHARfunc
    movb    %al, -17(%ebp)         

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
v1:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
