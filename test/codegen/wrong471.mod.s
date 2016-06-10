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

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body
    jmp     l_f0_exit              
    jmp     l_f0_exit              
    jmp     l_f0_exit              

l_f0_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
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
    #    -84(%ebp)   4  [ $t27      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t28      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t29      <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t30      <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t31      <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t32      <int> %ebp-104 ]
    #   -108(%ebp)   4  [ $t7       <int> %ebp-108 ]
    #   -109(%ebp)   1  [ $t8       <char> %ebp-109 ]
    #   -116(%ebp)   4  [ $t9       <int> %ebp-116 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 3 of <array 8 of <array 7 of <array 2 of <array 10 of <char>>>>>>> %ebp+8 ]
    #   -117(%ebp)   1  [ $v1       <char> %ebp-117 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $108, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $27, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    dummyINTfunc            #   0:     call   t7 <- dummyINTfunc
    movl    %eax, -108(%ebp)       
l_f1_2_while_cond:
    movl    $99, %eax               #   2:     if     99 > 98 goto 3_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f1_3_while_body      
    jmp     l_f1_1                  #   3:     goto   1
l_f1_3_while_body:
    movl    $98, %eax               #   5:     assign v1 <- 98
    movb    %al, -117(%ebp)        
    jmp     l_f1_2_while_cond       #   6:     goto   2_while_cond
l_f1_1:
    call    dummyCHARfunc           #   8:     call   t8 <- dummyCHARfunc
    movb    %al, -109(%ebp)        
    movl    $2, %eax                #   9:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  10:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  11:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -116(%ebp)       
    movl    $39348, %eax            #  12:     mul    t10 <- 39348, t9
    movl    -116(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    $20044, %eax            #  13:     add    t11 <- 20044, 56555
    movl    $56555, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  14:     sub    t12 <- t11, 19833
    movl    $19833, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  15:     sub    t13 <- t12, 79851
    movl    $79851, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  16:     add    t14 <- t13, 26486
    movl    $26486, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  17:     add    t15 <- t14, 86994
    movl    $86994, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  18:     sub    t16 <- t15, 18460
    movl    $18460, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  19:     sub    t17 <- t16, 40503
    movl    $40503, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  20:     sub    t18 <- t17, 86028
    movl    $86028, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -16(%ebp), %eax         #  21:     add    t19 <- t10, t18
    movl    -48(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    $3, %eax                #  22:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  23:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  24:     call   t20 <- DIM
    addl    $8, %esp               
    movl    %eax, -56(%ebp)        
    movl    -52(%ebp), %eax         #  25:     mul    t21 <- t19, t20
    movl    -56(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  26:     add    t22 <- t21, 43744
    movl    $43744, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    $4, %eax                #  27:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  28:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  29:     call   t23 <- DIM
    addl    $8, %esp               
    movl    %eax, -68(%ebp)        
    movl    -64(%ebp), %eax         #  30:     mul    t24 <- t22, t23
    movl    -68(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  31:     add    t25 <- t24, 12058
    movl    $12058, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    $5, %eax                #  32:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  33:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  34:     call   t26 <- DIM
    addl    $8, %esp               
    movl    %eax, -80(%ebp)        
    movl    -76(%ebp), %eax         #  35:     mul    t27 <- t25, t26
    movl    -80(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  36:     add    t28 <- t27, 69420
    movl    $69420, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  37:     mul    t29 <- t28, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -92(%ebp)        
    movl    8(%ebp), %eax           #  38:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  39:     call   t30 <- DOFS
    addl    $4, %esp               
    movl    %eax, -96(%ebp)        
    movl    -92(%ebp), %eax         #  40:     add    t31 <- t29, t30
    movl    -96(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -100(%ebp)       
    movl    8(%ebp), %eax           #  41:     add    t32 <- v0, t31
    movl    -100(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -104(%ebp)       
    movzbl  -109(%ebp), %eax        #  42:     assign @t32 <- t8
    movl    -104(%ebp), %edi       
    movb    %al, (%edi)            

l_f1_exit:
    # epilogue
    addl    $108, %esp              # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t7       <bool> %ebp-13 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 6 of <array 10 of <array 3 of <array 1 of <array 7 of <bool>>>>>>> %ebp+12 ]
    #    -14(%ebp)   1  [ $v2       <char> %ebp-14 ]

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
    jmp     l_f2_2_if_false         #   0:     goto   2_if_false
l_f2_4_while_cond:
    jmp     l_f2_4_while_cond       #   2:     goto   4_while_cond
    jmp     l_f2_0                  #   3:     goto   0
l_f2_2_if_false:
l_f2_0:
    jmp     l_f2_7                  #   6:     goto   7
    jmp     l_f2_7                  #   7:     goto   7
    jmp     l_f2_7                  #   8:     goto   7
    jmp     l_f2_8                  #   9:     goto   8
l_f2_7:
    movl    $1, %eax                #  11:     assign t7 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_9                  #  12:     goto   9
l_f2_8:
    movl    $0, %eax                #  14:     assign t7 <- 0
    movb    %al, -13(%ebp)         
l_f2_9:
    movzbl  -13(%ebp), %eax         #  16:     return t7
    jmp     l_f2_exit              
    movl    $99, %eax               #  17:     assign v2 <- 99
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
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <ptr(4) to <array 6 of <array 10 of <array 3 of <array 1 of <array 7 of <bool>>>>>>> %ebp-32 ]
    #    -33(%ebp)   1  [ $t5       <bool> %ebp-33 ]
    #    -34(%ebp)   1  [ $t6       <bool> %ebp-34 ]

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
    call    ReadInt                 #   0:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
l_test_2_while_cond:
    movl    $75353, %eax            #   2:     sub    t1 <- 75353, 22285
    movl    $22285, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     if     t1 = 73392 goto 3_while_body
    movl    $73392, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_3_while_body    
    jmp     l_test_1                #   4:     goto   1
l_test_3_while_body:
    movl    $25630, %eax            #   6:     if     25630 < 24399 goto 6_if_true
    movl    $24399, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_6_if_true       
    jmp     l_test_7_if_false       #   7:     goto   7_if_false
l_test_6_if_true:
    jmp     l_test_5                #   9:     goto   5
l_test_7_if_false:
l_test_5:
l_test_10_while_cond:
    movl    $97, %eax               #  13:     if     97 < 99 goto 11_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_11_while_body   
    jmp     l_test_9                #  14:     goto   9
l_test_11_while_body:
    jmp     l_test_10_while_cond    #  16:     goto   10_while_cond
l_test_9:
    call    dummyINTfunc            #  18:     call   t2 <- dummyINTfunc
    movl    %eax, -24(%ebp)        
    jmp     l_test_2_while_cond     #  19:     goto   2_while_cond
l_test_1:
    call    dummyProcedure          #  21:     call   dummyProcedure
    jmp     l_test_17_if_false      #  22:     goto   17_if_false
    movl    $70549, %eax            #  23:     param  0 <- 70549
    pushl   %eax                   
    call    WriteInt                #  24:     call   WriteInt
    addl    $4, %esp               
    movl    $0, %eax                #  25:     if     0 = 0 goto 20_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_20_if_true      
    jmp     l_test_21_if_false      #  26:     goto   21_if_false
l_test_20_if_true:
    jmp     l_test_19               #  28:     goto   19
l_test_21_if_false:
l_test_19:
    jmp     l_test_exit            
    jmp     l_test_15               #  32:     goto   15
l_test_17_if_false:
l_test_15:
    call    ReadInt                 #  35:     call   t3 <- ReadInt
    movl    %eax, -28(%ebp)        
    jmp     l_test_27_if_false      #  36:     goto   27_if_false
    movl    $52303, %eax            #  37:     if     52303 >= 26862 goto 29_if_true
    movl    $26862, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_29_if_true      
    jmp     l_test_30_if_false      #  38:     goto   30_if_false
l_test_29_if_true:
    jmp     l_test_28               #  40:     goto   28
l_test_30_if_false:
l_test_28:
    leal    v0, %eax                #  43:     &()    t4 <- v0
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  44:     param  1 <- t4
    pushl   %eax                   
    movl    $100, %eax              #  45:     if     100 # 98 goto 33
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_33              
    jmp     l_test_34               #  46:     goto   34
l_test_33:
    movl    $1, %eax                #  48:     assign t5 <- 1
    movb    %al, -33(%ebp)         
    jmp     l_test_35               #  49:     goto   35
l_test_34:
    movl    $0, %eax                #  51:     assign t5 <- 0
    movb    %al, -33(%ebp)         
l_test_35:
    movzbl  -33(%ebp), %eax         #  53:     param  0 <- t5
    pushl   %eax                   
    call    f2                      #  54:     call   t6 <- f2
    addl    $8, %esp               
    movb    %al, -34(%ebp)         
    movl    $100, %eax              #  55:     if     100 >= 98 goto 38_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_38_if_true      
    jmp     l_test_39_if_false      #  56:     goto   39_if_false
l_test_38_if_true:
    jmp     l_test_37               #  58:     goto   37
l_test_39_if_false:
l_test_37:
    jmp     l_test_25               #  61:     goto   25
l_test_27_if_false:
l_test_25:

l_test_exit:
    # epilogue
    addl    $24, %esp               # remove locals
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
v0:                                 # <array 6 of <array 10 of <array 3 of <array 1 of <array 7 of <bool>>>>>>
    .long    5
    .long    6
    .long   10
    .long    3
    .long    1
    .long    7
    .skip 1260








    # end of global data section
    #-----------------------------------------

    .end
##################################################
