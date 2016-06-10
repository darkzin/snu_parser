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
    #    -13(%ebp)   1  [ $t5       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t6       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t7       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t8       <int> %ebp-24 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 38 of <array 59 of <array 59 of <array 79 of <array 31 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]

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
    call    dummyCHARfunc           #   0:     call   t5 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
l_f0_2_while_cond:
    movl    $97, %eax               #   2:     if     97 = 100 goto 5
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    je      l_f0_5                 
    jmp     l_f0_6                  #   3:     goto   6
l_f0_5:
    movl    $1, %eax                #   5:     assign t6 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f0_7                  #   6:     goto   7
l_f0_6:
    movl    $0, %eax                #   8:     assign t6 <- 0
    movb    %al, -14(%ebp)         
l_f0_7:
    movzbl  -14(%ebp), %eax         #  10:     return t6
    jmp     l_f0_exit              
    movl    $1, %eax                #  11:     return 1
    jmp     l_f0_exit              
    jmp     l_f0_2_while_cond       #  12:     goto   2_while_cond
    movl    $31091, %eax            #  13:     div    t7 <- 31091, 67418
    movl    $67418, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  14:     div    t8 <- t7, 2073
    movl    $2073, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  15:     if     t8 < 79460 goto 11_if_true
    movl    $79460, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_11_if_true        
    jmp     l_f0_12_if_false        #  16:     goto   12_if_false
l_f0_11_if_true:
    jmp     l_f0_10                 #  18:     goto   10
l_f0_12_if_false:
l_f0_10:

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
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t7       <int> %ebp-24 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 90 of <array 96 of <array 10 of <array 41 of <array 49 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]

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
    call    dummyINTfunc            #   0:     call   t5 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    $99170, %eax            #   1:     sub    t6 <- 99170, 63058
    movl    $63058, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $39153, %eax            #   2:     if     39153 > t6 goto 2_if_true
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f1_2_if_true         
    jmp     l_f1_3_if_false         #   3:     goto   3_if_false
l_f1_2_if_true:
    jmp     l_f1_exit              
    jmp     l_f1_1                  #   6:     goto   1
l_f1_3_if_false:
l_f1_1:
l_f1_7_while_cond:
    jmp     l_f1_11_if_false        #  10:     goto   11_if_false
    jmp     l_f1_9                  #  11:     goto   9
l_f1_11_if_false:
l_f1_9:
    call    dummyINTfunc            #  14:     call   t7 <- dummyINTfunc
    movl    %eax, -24(%ebp)        
    jmp     l_f1_7_while_cond       #  15:     goto   7_while_cond

l_f1_exit:
    # epilogue
    addl    $12, %esp               # remove locals
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
    #    -72(%ebp)   4  [ $t24      <ptr(4) to <array 5 of <char>>> %ebp-72 ]
    #    -76(%ebp)   4  [ $t25      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t26      <int> %ebp-80 ]
    #    -81(%ebp)   1  [ $t5       <bool> %ebp-81 ]
    #    -82(%ebp)   1  [ $t6       <bool> %ebp-82 ]
    #    -83(%ebp)   1  [ $t7       <bool> %ebp-83 ]
    #    -88(%ebp)   4  [ $t8       <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t9       <int> %ebp-92 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 33 of <array 14 of <array 84 of <array 88 of <array 60 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #    -93(%ebp)   1  [ $v2       <bool> %ebp-93 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $84, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $21, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
l_f2_1_while_cond:
    jmp     l_f2_5                  #   1:     goto   5
    jmp     l_f2_5                  #   2:     goto   5
    movl    $1, %eax                #   3:     assign t5 <- 1
    movb    %al, -81(%ebp)         
    jmp     l_f2_6                  #   4:     goto   6
l_f2_5:
    movl    $0, %eax                #   6:     assign t5 <- 0
    movb    %al, -81(%ebp)         
l_f2_6:
    jmp     l_f2_8                  #   8:     goto   8
l_f2_8:
    movl    $1, %eax                #  10:     assign t6 <- 1
    movb    %al, -82(%ebp)         
    jmp     l_f2_10                 #  11:     goto   10
    movl    $0, %eax                #  12:     assign t6 <- 0
    movb    %al, -82(%ebp)         
l_f2_10:
    movzbl  -81(%ebp), %eax         #  14:     if     t5 = t6 goto 2_while_body
    movzbl  -82(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f2_2_while_body      
    jmp     l_f2_0                  #  15:     goto   0
l_f2_2_while_body:
    jmp     l_f2_1_while_cond       #  17:     goto   1_while_cond
l_f2_0:
l_f2_14_while_cond:
    movl    $7999, %eax             #  20:     if     7999 >= 33743 goto 18
    movl    $33743, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_18                
    jmp     l_f2_19                 #  21:     goto   19
l_f2_18:
    movl    $1, %eax                #  23:     assign t7 <- 1
    movb    %al, -83(%ebp)         
    jmp     l_f2_20                 #  24:     goto   20
l_f2_19:
    movl    $0, %eax                #  26:     assign t7 <- 0
    movb    %al, -83(%ebp)         
l_f2_20:
    movl    $2, %eax                #  28:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  29:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  30:     call   t8 <- DIM
    addl    $8, %esp               
    movl    %eax, -88(%ebp)        
    movl    $85711, %eax            #  31:     mul    t9 <- 85711, t8
    movl    -88(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -92(%ebp)        
    movl    -92(%ebp), %eax         #  32:     add    t10 <- t9, 17188
    movl    $17188, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $3, %eax                #  33:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  34:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  35:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #  36:     mul    t12 <- t10, t11
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  37:     add    t13 <- t12, 69122
    movl    $69122, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $4, %eax                #  38:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  39:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  40:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  41:     mul    t15 <- t13, t14
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  42:     add    t16 <- t15, 21986
    movl    $21986, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $5, %eax                #  43:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  44:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  45:     call   t17 <- DIM
    addl    $8, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  46:     mul    t18 <- t16, t17
    movl    -44(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  47:     add    t19 <- t18, 12800
    movl    $12800, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  48:     mul    t20 <- t19, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    8(%ebp), %eax           #  49:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  50:     call   t21 <- DOFS
    addl    $4, %esp               
    movl    %eax, -60(%ebp)        
    movl    -56(%ebp), %eax         #  51:     add    t22 <- t20, t21
    movl    -60(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    8(%ebp), %eax           #  52:     add    t23 <- v0, t22
    movl    -64(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movzbl  -83(%ebp), %eax         #  53:     assign @t23 <- t7
    movl    -68(%ebp), %edi        
    movb    %al, (%edi)            
    jmp     l_f2_14_while_cond      #  54:     goto   14_while_cond
    movl    $97, %eax               #  55:     if     97 = 97 goto 26_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    je      l_f2_26_if_true        
    jmp     l_f2_27_if_false        #  56:     goto   27_if_false
l_f2_26_if_true:
    jmp     l_f2_25                 #  58:     goto   25
l_f2_27_if_false:
l_f2_25:
    leal    _str_1, %eax            #  61:     &()    t24 <- _str_1
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  62:     param  0 <- t24
    pushl   %eax                   
    call    WriteStr                #  63:     call   WriteStr
    addl    $4, %esp               
    movl    $59577, %eax            #  64:     div    t25 <- 59577, 54681
    movl    $54681, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  65:     div    t26 <- t25, 11423
    movl    $11423, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  66:     param  0 <- t26
    pushl   %eax                   
    call    WriteInt                #  67:     call   WriteInt
    addl    $4, %esp               
    jmp     l_f2_22                 #  68:     goto   22
l_f2_22:

l_f2_exit:
    # epilogue
    addl    $84, %esp               # remove locals
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
    #    -28(%ebp)   4  [ $t3       <ptr(4) to <array 33 of <array 14 of <array 84 of <array 88 of <array 60 of <bool>>>>>>> %ebp-28 ]
    #    -29(%ebp)   1  [ $t4       <char> %ebp-29 ]

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
    jmp     l_test_exit            
    movl    $81230, %eax            #   1:     if     81230 # 43325 goto 2_if_true
    movl    $43325, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_2_if_true       
    jmp     l_test_3_if_false       #   2:     goto   3_if_false
l_test_2_if_true:
    jmp     l_test_7_if_false       #   4:     goto   7_if_false
    jmp     l_test_5                #   5:     goto   5
l_test_7_if_false:
l_test_5:
    movl    $97, %eax               #   8:     assign v0 <- 97
    movb    %al, v0                
    movl    $98, %eax               #   9:     assign v0 <- 98
    movb    %al, v0                
    movl    $100, %eax              #  10:     assign v0 <- 100
    movb    %al, v0                
    movl    $47384, %eax            #  11:     assign v1 <- 47384
    movl    %eax, v1               
    jmp     l_test_1                #  12:     goto   1
l_test_3_if_false:
l_test_1:
    movl    $69588, %eax            #  15:     div    t0 <- 69588, 41589
    movl    $41589, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  16:     sub    t1 <- t0, 30077
    movl    $30077, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  17:     add    t2 <- t1, 5398
    movl    $5398, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  18:     param  1 <- t2
    pushl   %eax                   
    leal    v2, %eax                #  19:     &()    t3 <- v2
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  20:     param  0 <- t3
    pushl   %eax                   
    call    f2                      #  21:     call   t4 <- f2
    addl    $8, %esp               
    movb    %al, -29(%ebp)         

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
_str_1:                             # <array 5 of <char>>
    .long    1
    .long    5
    .asciz "bye\n"
v0:                                 # <char>
    .skip    1
    .align   4
v1:                                 # <int>
    .skip    4
v2:                                 # <array 33 of <array 14 of <array 84 of <array 88 of <array 60 of <bool>>>>>>
    .long    5
    .long   33
    .long   14
    .long   84
    .long   88
    .long   60
    .skip 204906240








    # end of global data section
    #-----------------------------------------

    .end
##################################################
