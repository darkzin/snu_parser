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
    #    -56(%ebp)   4  [ $t20      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t21      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t22      <int> %ebp-64 ]
    #    -65(%ebp)   1  [ $t23      <char> %ebp-65 ]
    #    -66(%ebp)   1  [ $t24      <bool> %ebp-66 ]
    #    -72(%ebp)   4  [ $t5       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t6       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t7       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t8       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t9       <int> %ebp-88 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 2 of <array 2 of <array 1 of <array 3 of <array 6 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <int> %ebp+16 ]

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
    movl    $89671, %eax            #   0:     add    t5 <- 89671, 11659
    movl    $11659, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    call    dummyINTfunc            #   1:     call   t6 <- dummyINTfunc
    movl    %eax, -76(%ebp)        
    movl    $2, %eax                #   2:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #   3:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #   4:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -80(%ebp)        
    movl    -76(%ebp), %eax         #   5:     mul    t8 <- t6, t7
    movl    -80(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #   6:     add    t9 <- t8, 12413
    movl    $12413, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    $3, %eax                #   7:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #   8:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #   9:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    -88(%ebp), %eax         #  10:     mul    t11 <- t9, t10
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  11:     add    t12 <- t11, 97592
    movl    $97592, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $4, %eax                #  12:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  13:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  14:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  15:     mul    t14 <- t12, t13
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  16:     add    t15 <- t14, 49579
    movl    $49579, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $5, %eax                #  17:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  18:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  19:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  20:     mul    t17 <- t15, t16
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  21:     add    t18 <- t17, 28988
    movl    $28988, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  22:     mul    t19 <- t18, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    8(%ebp), %eax           #  23:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  24:     call   t20 <- DOFS
    addl    $4, %esp               
    movl    %eax, -56(%ebp)        
    movl    -52(%ebp), %eax         #  25:     add    t21 <- t19, t20
    movl    -56(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    8(%ebp), %eax           #  26:     add    t22 <- v1, t21
    movl    -60(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    -72(%ebp), %eax         #  27:     assign @t22 <- t5
    movl    -64(%ebp), %edi        
    movl    %eax, (%edi)           
l_f0_2_while_cond:
    call    dummyCHARfunc           #  29:     call   t23 <- dummyCHARfunc
    movb    %al, -65(%ebp)         
    jmp     l_f0_2_while_cond       #  30:     goto   2_while_cond
    jmp     l_f0_6                  #  31:     goto   6
    jmp     l_f0_6                  #  32:     goto   6
l_f0_6:
    movl    $1, %eax                #  34:     assign t24 <- 1
    movb    %al, -66(%ebp)         
    jmp     l_f0_8                  #  35:     goto   8
    movl    $0, %eax                #  36:     assign t24 <- 0
    movb    %al, -66(%ebp)         
l_f0_8:
    movzbl  -66(%ebp), %eax         #  38:     return t24
    jmp     l_f0_exit              

l_f0_exit:
    # epilogue
    addl    $76, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t5       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t6       <ptr(4) to <array 2 of <array 2 of <array 1 of <array 3 of <array 6 of <int>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t7       <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $v1       <int> %ebp-28 ]
    #   -340(%ebp)  312  [ $v2       <array 2 of <array 2 of <array 1 of <array 3 of <array 6 of <int>>>>>> %ebp-340 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $328, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $82, %ecx              
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-340(%ebp)           # local array 'v2': 5 dimensions
    movl    $2,-336(%ebp)           #   dimension 1: 2 elements
    movl    $2,-332(%ebp)           #   dimension 2: 2 elements
    movl    $1,-328(%ebp)           #   dimension 3: 1 elements
    movl    $3,-324(%ebp)           #   dimension 4: 3 elements
    movl    $6,-320(%ebp)           #   dimension 5: 6 elements

    # function body
    movl    $439, %eax              #   0:     assign v1 <- 439
    movl    %eax, -28(%ebp)        
    movl    $34467, %eax            #   1:     param  2 <- 34467
    pushl   %eax                   
    jmp     l_f1_2                  #   2:     goto   2
l_f1_2:
    movl    $1, %eax                #   4:     assign t5 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_4                  #   5:     goto   4
    movl    $0, %eax                #   6:     assign t5 <- 0
    movb    %al, -13(%ebp)         
l_f1_4:
    movzbl  -13(%ebp), %eax         #   8:     param  1 <- t5
    pushl   %eax                   
    leal    -340(%ebp), %eax        #   9:     &()    t6 <- v2
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  10:     param  0 <- t6
    pushl   %eax                   
    call    f0                      #  11:     call   t7 <- f0
    addl    $12, %esp              
    movb    %al, -21(%ebp)         
l_f1_7_while_cond:
    jmp     l_f1_8_while_body       #  13:     goto   8_while_body
    movl    $98, %eax               #  14:     if     98 # 99 goto 8_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f1_8_while_body      
    jmp     l_f1_6                  #  15:     goto   6
l_f1_8_while_body:
    jmp     l_f1_7_while_cond       #  17:     goto   7_while_cond
l_f1_6:

l_f1_exit:
    # epilogue
    addl    $328, %esp              # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t5       <bool> %ebp-13 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 5 of <array 5 of <array 1 of <array 10 of <array 4 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 1 of <array 5 of <array 6 of <array 10 of <array 8 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 2 of <array 8 of <array 3 of <array 3 of <array 6 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 6 of <array 5 of <array 9 of <array 8 of <array 10 of <int>>>>>>> %ebp+20 ]

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
l_f2_1_while_cond:
    jmp     l_f2_2_while_body       #   1:     goto   2_while_body
    jmp     l_f2_2_while_body       #   2:     goto   2_while_body
    jmp     l_f2_0                  #   3:     goto   0
l_f2_2_while_body:
    jmp     l_f2_1_while_cond       #   5:     goto   1_while_cond
l_f2_0:
    movl    $98, %eax               #   7:     return 98
    jmp     l_f2_exit              
    movl    $21976, %eax            #   8:     if     21976 >= 18913 goto 7_if_true
    movl    $18913, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_7_if_true         
    jmp     l_f2_8_if_false         #   9:     goto   8_if_false
l_f2_7_if_true:
    call    dummyBOOLfunc           #  11:     call   t5 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
l_f2_12_while_cond:
    movl    $98, %eax               #  13:     if     98 = 98 goto 13_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    je      l_f2_13_while_body     
    jmp     l_f2_11                 #  14:     goto   11
l_f2_13_while_body:
    movl    $99, %eax               #  16:     return 99
    jmp     l_f2_exit              
    jmp     l_f2_12_while_cond      #  17:     goto   12_while_cond
l_f2_11:
    jmp     l_f2_6                  #  19:     goto   6
l_f2_8_if_false:
l_f2_6:

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
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
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
    call    dummyCHARfunc           #   0:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     assign v0 <- t0
    movb    %al, v0                
    movl    $98, %eax               #   2:     if     98 > 99 goto 2_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_2_if_true       
    jmp     l_test_3_if_false       #   3:     goto   3_if_false
l_test_2_if_true:
    movl    $98, %eax               #   5:     assign v0 <- 98
    movb    %al, v0                
    jmp     l_test_1                #   6:     goto   1
l_test_3_if_false:
l_test_1:
l_test_7_while_cond:
    movl    $98, %eax               #  10:     if     98 > 99 goto 8_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_8_while_body    
    jmp     l_test_6                #  11:     goto   6
l_test_8_while_body:
    call    ReadInt                 #  13:     call   t1 <- ReadInt
    movl    %eax, -20(%ebp)        
    jmp     l_test_exit            
    movl    $98, %eax               #  15:     assign v0 <- 98
    movb    %al, v0                
    jmp     l_test_7_while_cond     #  16:     goto   7_while_cond
l_test_6:
    movl    $99, %eax               #  18:     assign v0 <- 99
    movb    %al, v0                
    jmp     l_test_exit            
    movl    $96795, %eax            #  20:     div    t2 <- 96795, 98076
    movl    $98076, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  21:     mul    t3 <- t2, 84671
    movl    $84671, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  22:     add    t4 <- t3, 46825
    movl    $46825, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  23:     param  0 <- t4
    pushl   %eax                   
    call    WriteInt                #  24:     call   WriteInt
    addl    $4, %esp               

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
v0:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
