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
    movl    $100, %eax              #   0:     if     100 >= 97 goto 1_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   1:     goto   2_if_false
l_f0_1_if_true:
    movl    $72037, %eax            #   3:     assign v1 <- 72037
    movl    %eax, -20(%ebp)        
    jmp     l_f0_0                  #   4:     goto   0
l_f0_2_if_false:
l_f0_0:
    movl    $96813, %eax            #   7:     if     96813 = 72816 goto 9_if_true
    movl    $72816, %ebx           
    cmpl    %ebx, %eax             
    je      l_f0_9_if_true         
    jmp     l_f0_10_if_false        #   8:     goto   10_if_false
l_f0_9_if_true:
    jmp     l_f0_8                  #  10:     goto   8
l_f0_10_if_false:
l_f0_8:
    jmp     l_f0_12                 #  13:     goto   12
l_f0_12:
    movl    $76589, %eax            #  15:     assign v1 <- 76589
    movl    %eax, -20(%ebp)        
    jmp     l_f0_5                  #  16:     goto   5
l_f0_5:
    call    ReadInt                 #  18:     call   t4 <- ReadInt
    movl    %eax, -16(%ebp)        

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
    #    -16(%ebp)   4  [ $t4       <int> %ebp-16 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 91 of <array 86 of <array 47 of <array 9 of <array 46 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <int> %ebp+16 ]
    #    -17(%ebp)   1  [ $v4       <bool> %ebp-17 ]

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
    movl    $9732, %eax             #   0:     sub    t4 <- 9732, 98003
    movl    $98003, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     if     t4 < 57009 goto 1_if_true
    movl    $57009, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   2:     goto   2_if_false
l_f1_1_if_true:
l_f1_5_while_cond:
    movl    $98, %eax               #   5:     if     98 <= 97 goto 6_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f1_6_while_body      
    jmp     l_f1_4                  #   6:     goto   4
l_f1_6_while_body:
    jmp     l_f1_5_while_cond       #   8:     goto   5_while_cond
l_f1_4:
    jmp     l_f1_0                  #  10:     goto   0
l_f1_2_if_false:
l_f1_0:
l_f1_9_while_cond:
    movl    $85988, %eax            #  14:     if     85988 < 15165 goto 10_while_body
    movl    $15165, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_10_while_body     
    jmp     l_f1_8                  #  15:     goto   8
l_f1_10_while_body:
    jmp     l_f1_12                 #  17:     goto   12
l_f1_12:
    movl    $0, %eax                #  19:     return 0
    jmp     l_f1_exit              
l_f1_17_while_cond:
    movl    $82824, %eax            #  21:     if     82824 >= 99069 goto 18_while_body
    movl    $99069, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_18_while_body     
    jmp     l_f1_16                 #  22:     goto   16
l_f1_18_while_body:
    jmp     l_f1_17_while_cond      #  24:     goto   17_while_cond
l_f1_16:
    jmp     l_f1_9_while_cond       #  26:     goto   9_while_cond
l_f1_8:
l_f1_21_while_cond:
    jmp     l_f1_20                 #  29:     goto   20
    movl    $0, %eax                #  30:     assign v4 <- 0
    movb    %al, -17(%ebp)         
    jmp     l_f1_21_while_cond      #  31:     goto   21_while_cond
l_f1_20:

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
    #    -81(%ebp)   1  [ $t4       <bool> %ebp-81 ]
    #    -88(%ebp)   4  [ $t5       <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t6       <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t7       <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t8       <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t9       <int> %ebp-104 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 67 of <array 73 of <array 1 of <array 25 of <array 59 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 82 of <array 71 of <array 3 of <array 64 of <array 23 of <char>>>>>>> %ebp+12 ]
    #   -108(%ebp)   4  [ $v3       <int> %ebp-108 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $96, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $24, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    jmp     l_f2_1                  #   0:     goto   1
l_f2_1:
    movl    $1, %eax                #   2:     assign t4 <- 1
    movb    %al, -81(%ebp)         
    jmp     l_f2_3                  #   3:     goto   3
    movl    $0, %eax                #   4:     assign t4 <- 0
    movb    %al, -81(%ebp)         
l_f2_3:
    movzbl  -81(%ebp), %eax         #   6:     return t4
    jmp     l_f2_exit              
l_f2_8_while_cond:
    movl    $79083, %eax            #   8:     mul    t5 <- 79083, 27722
    movl    $27722, %ebx           
    imull   %ebx                   
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #   9:     div    t6 <- t5, 94579
    movl    $94579, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -92(%ebp)        
    movl    -92(%ebp), %eax         #  10:     mul    t7 <- t6, 90043
    movl    $90043, %ebx           
    imull   %ebx                   
    movl    %eax, -96(%ebp)        
    movl    $70602, %eax            #  11:     if     70602 > t7 goto 9_while_body
    movl    -96(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f2_9_while_body      
    jmp     l_f2_7                  #  12:     goto   7
l_f2_9_while_body:
    jmp     l_f2_11                 #  14:     goto   11
l_f2_11:
    movl    $0, %eax                #  16:     return 0
    jmp     l_f2_exit              
    jmp     l_f2_8_while_cond       #  17:     goto   8_while_cond
l_f2_7:
    movl    $53187, %eax            #  19:     add    t8 <- 53187, 74974
    movl    $74974, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -100(%ebp)       
    movl    $66993, %eax            #  20:     mul    t9 <- 66993, 82492
    movl    $82492, %ebx           
    imull   %ebx                   
    movl    %eax, -104(%ebp)       
    movl    -100(%ebp), %eax        #  21:     sub    t10 <- t8, t9
    movl    -104(%ebp), %ebx       
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $2, %eax                #  22:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  23:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  24:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #  25:     mul    t12 <- t10, t11
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  26:     add    t13 <- t12, 79050
    movl    $79050, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $3, %eax                #  27:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  28:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  29:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  30:     mul    t15 <- t13, t14
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  31:     add    t16 <- t15, 20165
    movl    $20165, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $4, %eax                #  32:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  33:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  34:     call   t17 <- DIM
    addl    $8, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  35:     mul    t18 <- t16, t17
    movl    -44(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  36:     add    t19 <- t18, 63833
    movl    $63833, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    $5, %eax                #  37:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  38:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  39:     call   t20 <- DIM
    addl    $8, %esp               
    movl    %eax, -56(%ebp)        
    movl    -52(%ebp), %eax         #  40:     mul    t21 <- t19, t20
    movl    -56(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  41:     add    t22 <- t21, 99335
    movl    $99335, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  42:     mul    t23 <- t22, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    8(%ebp), %eax           #  43:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  44:     call   t24 <- DOFS
    addl    $4, %esp               
    movl    %eax, -72(%ebp)        
    movl    -68(%ebp), %eax         #  45:     add    t25 <- t23, t24
    movl    -72(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    8(%ebp), %eax           #  46:     add    t26 <- v1, t25
    movl    -76(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    $83768, %eax            #  47:     assign @t26 <- 83768
    movl    -80(%ebp), %edi        
    movl    %eax, (%edi)           

l_f2_exit:
    # epilogue
    addl    $96, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 82 of <array 71 of <array 3 of <array 64 of <array 23 of <char>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <ptr(4) to <array 67 of <array 73 of <array 1 of <array 25 of <array 59 of <int>>>>>>> %ebp-24 ]
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
    movl    $55817, %eax            #   0:     if     55817 = 70680 goto 1
    movl    $70680, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_1               
    jmp     l_test_2                #   1:     goto   2
l_test_1:
    movl    $1, %eax                #   3:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_3                #   4:     goto   3
l_test_2:
    movl    $0, %eax                #   6:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_3:
    movzbl  -13(%ebp), %eax         #   8:     assign v0 <- t0
    movb    %al, v0                
    movl    $42390, %eax            #   9:     assign v1 <- 42390
    movl    %eax, v1               
    movl    $99, %eax               #  10:     param  0 <- 99
    pushl   %eax                   
    call    WriteChar               #  11:     call   WriteChar
    addl    $4, %esp               
l_test_8_while_cond:
    leal    v3, %eax                #  13:     &()    t1 <- v3
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  14:     param  1 <- t1
    pushl   %eax                   
    leal    v2, %eax                #  15:     &()    t2 <- v2
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  16:     param  0 <- t2
    pushl   %eax                   
    call    f2                      #  17:     call   t3 <- f2
    addl    $8, %esp               
    movb    %al, -25(%ebp)         
    movzbl  -25(%ebp), %eax         #  18:     if     t3 = 1 goto 9_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_9_while_body    
    jmp     l_test_7                #  19:     goto   7
l_test_9_while_body:
    jmp     l_test_8_while_cond     #  21:     goto   8_while_cond
l_test_7:

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
    .align   4
v1:                                 # <int>
    .skip    4
v2:                                 # <array 67 of <array 73 of <array 1 of <array 25 of <array 59 of <int>>>>>>
    .long    5
    .long   67
    .long   73
    .long    1
    .long   25
    .long   59
    .skip 28856900
v3:                                 # <array 82 of <array 71 of <array 3 of <array 64 of <array 23 of <char>>>>>>
    .long    5
    .long   82
    .long   71
    .long    3
    .long   64
    .long   23
    .skip 25709952








    # end of global data section
    #-----------------------------------------

    .end
##################################################
