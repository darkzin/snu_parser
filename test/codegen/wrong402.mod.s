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
    #    -14(%ebp)   1  [ $t11      <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t12      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t13      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t14      <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t9       <char> %ebp-29 ]
    #    -36(%ebp)   4  [ $v2       <int> %ebp-36 ]

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
    call    dummyCHARfunc           #   0:     call   t9 <- dummyCHARfunc
    movb    %al, -29(%ebp)         
    movzbl  -29(%ebp), %eax         #   1:     return t9
    jmp     l_f0_exit              
    movl    $97, %eax               #   2:     if     97 > 100 goto 5
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_f0_5                 
    jmp     l_f0_6                  #   3:     goto   6
l_f0_5:
    movl    $1, %eax                #   5:     assign t10 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_7                  #   6:     goto   7
l_f0_6:
    movl    $0, %eax                #   8:     assign t10 <- 0
    movb    %al, -13(%ebp)         
l_f0_7:
    call    dummyBOOLfunc           #  10:     call   t11 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    movzbl  -13(%ebp), %eax         #  11:     if     t10 # t11 goto 2_if_true
    movzbl  -14(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f0_2_if_true         
    jmp     l_f0_3_if_false         #  12:     goto   3_if_false
l_f0_2_if_true:
    jmp     l_f0_1                  #  14:     goto   1
l_f0_3_if_false:
l_f0_1:
    movl    $54444, %eax            #  17:     div    t12 <- 54444, 84993
    movl    $84993, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  18:     mul    t13 <- t12, 27024
    movl    $27024, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  19:     mul    t14 <- t13, 97224
    movl    $97224, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  20:     assign v2 <- t14
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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t9       <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 5 of <array 9 of <array 9 of <array 5 of <array 5 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v3       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v4       <int> %ebp+16 ]

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
    movl    $13407, %eax            #   0:     sub    t9 <- 13407, 84987
    movl    $84987, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $61340, %eax            #   1:     if     61340 > t9 goto 1_if_true
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   2:     goto   2_if_false
l_f1_1_if_true:
    jmp     l_f1_0                  #   4:     goto   0
l_f1_2_if_false:
l_f1_0:
l_f1_5_while_cond:
    jmp     l_f1_6_while_body       #   8:     goto   6_while_body
    jmp     l_f1_4                  #   9:     goto   4
l_f1_6_while_body:
l_f1_11_while_cond:
    movl    $40642, %eax            #  12:     if     40642 = 47693 goto 12_while_body
    movl    $47693, %ebx           
    cmpl    %ebx, %eax             
    je      l_f1_12_while_body     
    jmp     l_f1_10                 #  13:     goto   10
l_f1_12_while_body:
    jmp     l_f1_11_while_cond      #  15:     goto   11_while_cond
l_f1_10:
    call    dummyINTfunc            #  17:     call   t10 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    $100, %eax              #  18:     return 100
    jmp     l_f1_exit              
    jmp     l_f1_5_while_cond       #  19:     goto   5_while_cond
l_f1_4:
    movl    $72821, %eax            #  21:     if     72821 > 27086 goto 17_if_true
    movl    $27086, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_17_if_true        
    jmp     l_f1_18_if_false        #  22:     goto   18_if_false
l_f1_17_if_true:
l_f1_21_while_cond:
    movl    $69554, %eax            #  25:     if     69554 >= 77374 goto 22_while_body
    movl    $77374, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_22_while_body     
    jmp     l_f1_20                 #  26:     goto   20
l_f1_22_while_body:
    jmp     l_f1_21_while_cond      #  28:     goto   21_while_cond
l_f1_20:
l_f1_25_while_cond:
    jmp     l_f1_25_while_cond      #  31:     goto   25_while_cond
l_f1_28_while_cond:
    movl    $98, %eax               #  33:     if     98 < 98 goto 29_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_29_while_body     
    jmp     l_f1_27                 #  34:     goto   27
l_f1_29_while_body:
    jmp     l_f1_28_while_cond      #  36:     goto   28_while_cond
l_f1_27:
    jmp     l_f1_16                 #  38:     goto   16
l_f1_18_if_false:
l_f1_16:

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
    #    -81(%ebp)   1  [ $t9       <bool> %ebp-81 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 3 of <array 8 of <array 6 of <array 3 of <array 4 of <int>>>>>>> %ebp+8 ]
    #    -82(%ebp)   1  [ $v3       <char> %ebp-82 ]
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
    movl    $97, %eax               #   0:     assign v3 <- 97
    movb    %al, -82(%ebp)         
l_f2_2_while_cond:
    movl    $99, %eax               #   2:     if     99 >= 97 goto 6
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_6                 
    jmp     l_f2_7                  #   3:     goto   7
l_f2_6:
    movl    $1, %eax                #   5:     assign t9 <- 1
    movb    %al, -81(%ebp)         
    jmp     l_f2_8                  #   6:     goto   8
l_f2_7:
    movl    $0, %eax                #   8:     assign t9 <- 0
    movb    %al, -81(%ebp)         
l_f2_8:
    movzbl  -81(%ebp), %eax         #  10:     return t9
    jmp     l_f2_exit              
    movl    $2, %eax                #  11:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  12:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  13:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    $72344, %eax            #  14:     mul    t11 <- 72344, t10
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  15:     add    t12 <- t11, 8602
    movl    $8602, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $3, %eax                #  16:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  17:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  18:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  19:     mul    t14 <- t12, t13
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  20:     add    t15 <- t14, 20172
    movl    $20172, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $4, %eax                #  21:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  22:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  23:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  24:     mul    t17 <- t15, t16
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  25:     add    t18 <- t17, 63642
    movl    $63642, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    $5, %eax                #  26:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  27:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  28:     call   t19 <- DIM
    addl    $8, %esp               
    movl    %eax, -52(%ebp)        
    movl    -48(%ebp), %eax         #  29:     mul    t20 <- t18, t19
    movl    -52(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  30:     add    t21 <- t20, 93024
    movl    $93024, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  31:     mul    t22 <- t21, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    8(%ebp), %eax           #  32:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  33:     call   t23 <- DOFS
    addl    $4, %esp               
    movl    %eax, -68(%ebp)        
    movl    -64(%ebp), %eax         #  34:     add    t24 <- t22, t23
    movl    -68(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    8(%ebp), %eax           #  35:     add    t25 <- v2, t24
    movl    -72(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    $77176, %eax            #  36:     assign @t25 <- 77176
    movl    -76(%ebp), %edi        
    movl    %eax, (%edi)           
    jmp     l_f2_2_while_cond       #  37:     goto   2_while_cond
    call    dummyINTfunc            #  38:     call   t26 <- dummyINTfunc
    movl    %eax, -80(%ebp)        

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
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t5       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t6       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t7       <ptr(4) to <array 3 of <array 8 of <array 6 of <array 3 of <array 4 of <int>>>>>>> %ebp-44 ]
    #    -45(%ebp)   1  [ $t8       <bool> %ebp-45 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $36, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $9, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $26342, %eax            #   0:     div    t0 <- 26342, 93286
    movl    $93286, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    $99364, %eax            #   1:     add    t1 <- 99364, t0
    movl    -16(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     assign v0 <- t1
    movl    %eax, v0               
    movl    $1, %eax                #   3:     assign v1 <- 1
    movb    %al, v1                
    movl    $34514, %eax            #   4:     assign v0 <- 34514
    movl    %eax, v0               
    movl    $17001, %eax            #   5:     div    t2 <- 17001, 53664
    movl    $53664, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   6:     mul    t3 <- t2, 57338
    movl    $57338, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   7:     sub    t4 <- t3, 89950
    movl    $89950, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   8:     add    t5 <- t4, 76888
    movl    $76888, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   9:     sub    t6 <- t5, 78901
    movl    $78901, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  10:     param  0 <- t6
    pushl   %eax                   
    call    WriteInt                #  11:     call   WriteInt
    addl    $4, %esp               
    movl    $0, %eax                #  12:     assign v1 <- 0
    movb    %al, v1                
    leal    v2, %eax                #  13:     &()    t7 <- v2
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  14:     param  0 <- t7
    pushl   %eax                   
    call    f2                      #  15:     call   t8 <- f2
    addl    $4, %esp               
    movb    %al, -45(%ebp)         

l_test_exit:
    # epilogue
    addl    $36, %esp               # remove locals
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
v2:                                 # <array 3 of <array 8 of <array 6 of <array 3 of <array 4 of <int>>>>>>
    .long    5
    .long    3
    .long    8
    .long    6
    .long    3
    .long    4
    .skip 6912








    # end of global data section
    #-----------------------------------------

    .end
##################################################
