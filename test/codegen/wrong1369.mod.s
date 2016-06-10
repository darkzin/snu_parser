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
    #    -45(%ebp)   1  [ $t18      <bool> %ebp-45 ]
    #    -52(%ebp)   4  [ $t6       <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t7       <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t8       <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t9       <int> %ebp-64 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 74 of <array 80 of <array 33 of <array 43 of <array 75 of <char>>>>>>> %ebp+8 ]
    #    -68(%ebp)   4  [ $v1       <int> %ebp-68 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $56, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $14, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $64412, %eax            #   0:     add    t6 <- 64412, 84957
    movl    $84957, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #   1:     add    t7 <- t6, 14059
    movl    $14059, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #   2:     add    t8 <- t7, 4143
    movl    $4143, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #   3:     sub    t9 <- t8, 65856
    movl    $65856, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #   4:     sub    t10 <- t9, 95116
    movl    $95116, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   5:     assign v1 <- t10
    movl    %eax, -68(%ebp)        
    call    ReadInt                 #   6:     call   t11 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   7:     div    t12 <- t11, 34955
    movl    $34955, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   8:     mul    t13 <- t12, 22588
    movl    $22588, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   9:     div    t14 <- t13, 18249
    movl    $18249, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  10:     div    t15 <- t14, 99620
    movl    $99620, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  11:     div    t16 <- t15, 73720
    movl    $73720, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  12:     mul    t17 <- t16, 73565
    movl    $73565, %ebx           
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    $57266, %eax            #  13:     if     57266 > t17 goto 2
    movl    -44(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f0_2                 
    jmp     l_f0_3                  #  14:     goto   3
l_f0_2:
    movl    $1, %eax                #  16:     assign t18 <- 1
    movb    %al, -45(%ebp)         
    jmp     l_f0_4                  #  17:     goto   4
l_f0_3:
    movl    $0, %eax                #  19:     assign t18 <- 0
    movb    %al, -45(%ebp)         
l_f0_4:
    movzbl  -45(%ebp), %eax         #  21:     return t18
    jmp     l_f0_exit              
    movl    $72259, %eax            #  22:     assign v1 <- 72259
    movl    %eax, -68(%ebp)        

l_f0_exit:
    # epilogue
    addl    $56, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t6       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t7       <bool> %ebp-14 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 39 of <array 11 of <array 58 of <array 18 of <array 73 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
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
    jmp     l_f1_2_if_false         #   0:     goto   2_if_false
    movl    $100, %eax              #   1:     return 100
    jmp     l_f1_exit              
    movl    $15441, %eax            #   2:     assign v2 <- 15441
    movl    %eax, -20(%ebp)        
    jmp     l_f1_0                  #   3:     goto   0
l_f1_2_if_false:
l_f1_0:
l_f1_6_while_cond:
    call    dummyCHARfunc           #   7:     call   t6 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   8:     if     t6 <= 97 goto 7_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f1_7_while_body      
    jmp     l_f1_5                  #   9:     goto   5
l_f1_7_while_body:
    movl    $100, %eax              #  11:     return 100
    jmp     l_f1_exit              
    movl    $100, %eax              #  12:     return 100
    jmp     l_f1_exit              
    jmp     l_f1_6_while_cond       #  13:     goto   6_while_cond
l_f1_5:
l_f1_12_while_cond:
    movl    $4095, %eax             #  16:     if     4095 < 91888 goto 13_while_body
    movl    $91888, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_13_while_body     
    jmp     l_f1_11                 #  17:     goto   11
l_f1_13_while_body:
    call    dummyBOOLfunc           #  19:     call   t7 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    jmp     l_f1_12_while_cond      #  20:     goto   12_while_cond
l_f1_11:

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
    #    -13(%ebp)   1  [ $t6       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t7       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t8       <bool> %ebp-15 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 77 of <array 65 of <array 74 of <array 68 of <array 98 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 38 of <array 57 of <array 39 of <array 52 of <array 25 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]
    #    -16(%ebp)   1  [ $v3       <char> %ebp-16 ]
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
    call    dummyCHARfunc           #   0:     call   t6 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     assign v3 <- t6
    movb    %al, -16(%ebp)         
    movl    $1, %eax                #   2:     assign t7 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_4                  #   3:     goto   4
    movl    $0, %eax                #   4:     assign t7 <- 0
    movb    %al, -14(%ebp)         
l_f2_4:
    movzbl  -14(%ebp), %eax         #   6:     assign v4 <- t7
    movb    %al, -17(%ebp)         
    call    dummyBOOLfunc           #   7:     call   t8 <- dummyBOOLfunc
    movb    %al, -15(%ebp)         

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
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t3       <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $t4       <ptr(4) to <array 39 of <array 11 of <array 58 of <array 18 of <array 73 of <int>>>>>>> %ebp-28 ]
    #    -29(%ebp)   1  [ $t5       <char> %ebp-29 ]

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
    call    dummyBOOLfunc           #   1:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_test_exit            
    jmp     l_test_0                #   3:     goto   0
l_test_2_if_false:
l_test_0:
    call    dummyBOOLfunc           #   6:     call   t1 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    call    dummyINTfunc            #   7:     call   t2 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    jmp     l_test_9_if_false       #   8:     goto   9_if_false
l_test_11_while_cond:
    jmp     l_test_11_while_cond    #  10:     goto   11_while_cond
    jmp     l_test_exit            
    jmp     l_test_exit            
    jmp     l_test_15               #  13:     goto   15
l_test_15:
    movl    $97, %eax               #  15:     if     97 < 97 goto 19
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_19              
    jmp     l_test_20               #  16:     goto   20
l_test_19:
    movl    $1, %eax                #  18:     assign t3 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_test_21               #  19:     goto   21
l_test_20:
    movl    $0, %eax                #  21:     assign t3 <- 0
    movb    %al, -21(%ebp)         
l_test_21:
    movzbl  -21(%ebp), %eax         #  23:     param  1 <- t3
    pushl   %eax                   
    leal    v0, %eax                #  24:     &()    t4 <- v0
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  25:     param  0 <- t4
    pushl   %eax                   
    call    f1                      #  26:     call   t5 <- f1
    addl    $8, %esp               
    movb    %al, -29(%ebp)         
    jmp     l_test_7                #  27:     goto   7
l_test_9_if_false:
l_test_7:
    movl    $97, %eax               #  30:     if     97 >= 97 goto 24_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_24_if_true      
    jmp     l_test_25_if_false      #  31:     goto   25_if_false
l_test_24_if_true:
    jmp     l_test_exit            
    jmp     l_test_exit            
    jmp     l_test_23               #  35:     goto   23
l_test_25_if_false:
l_test_23:
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
v0:                                 # <array 39 of <array 11 of <array 58 of <array 18 of <array 73 of <int>>>>>>
    .long    5
    .long   39
    .long   11
    .long   58
    .long   18
    .long   73
    .skip 130779792








    # end of global data section
    #-----------------------------------------

    .end
##################################################
