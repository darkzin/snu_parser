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
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $v0       <bool> %ebp-15 ]

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
    call    dummyBOOLfunc           #   0:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
l_f0_2_while_cond:
    jmp     l_f0_3_while_body       #   2:     goto   3_while_body
l_f0_3_while_body:
    jmp     l_f0_2_while_cond       #   4:     goto   2_while_cond
    movl    $61317, %eax            #   5:     if     61317 <= 60102 goto 6
    movl    $60102, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_6                 
    jmp     l_f0_7                  #   6:     goto   7
l_f0_6:
    movl    $1, %eax                #   8:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f0_8                  #   9:     goto   8
l_f0_7:
    movl    $0, %eax                #  11:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_f0_8:
    movzbl  -14(%ebp), %eax         #  13:     assign v0 <- t1
    movb    %al, -15(%ebp)         

l_f0_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t2       <bool> %ebp-15 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 90 of <array 16 of <array 91 of <array 50 of <array 48 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 16 of <array 61 of <array 6 of <array 68 of <array 50 of <bool>>>>>>> %ebp+16 ]

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
    jmp     l_f1_2_if_false         #   0:     goto   2_if_false
l_f1_4_while_cond:
    jmp     l_f1_8_if_false         #   2:     goto   8_if_false
    jmp     l_f1_6                  #   3:     goto   6
l_f1_8_if_false:
l_f1_6:
    jmp     l_f1_4_while_cond       #   6:     goto   4_while_cond
    jmp     l_f1_0                  #   7:     goto   0
l_f1_2_if_false:
l_f1_0:
    jmp     l_f1_13                 #  10:     goto   13
    jmp     l_f1_10                 #  11:     goto   10
l_f1_13:
l_f1_10:
    movl    $1, %eax                #  14:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_12                 #  15:     goto   12
    movl    $0, %eax                #  16:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_f1_12:
    movzbl  -13(%ebp), %eax         #  18:     return t0
    jmp     l_f1_exit              
    call    dummyCHARfunc           #  19:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #  20:     if     t1 <= 99 goto 16
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f1_16                
    jmp     l_f1_17                 #  21:     goto   17
l_f1_16:
    movl    $1, %eax                #  23:     assign t2 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f1_18                 #  24:     goto   18
l_f1_17:
    movl    $0, %eax                #  26:     assign t2 <- 0
    movb    %al, -15(%ebp)         
l_f1_18:
    movzbl  -15(%ebp), %eax         #  28:     return t2
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t10      <ptr(4) to <array 90 of <array 16 of <array 91 of <array 50 of <array 48 of <char>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t11      <bool> %ebp-25 ]
    #    -26(%ebp)   1  [ $t12      <bool> %ebp-26 ]
    #    -32(%ebp)   4  [ $t2       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t3       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t4       <int> %ebp-40 ]
    #    -41(%ebp)   1  [ $t5       <bool> %ebp-41 ]
    #    -48(%ebp)   4  [ $t6       <ptr(4) to <array 16 of <array 61 of <array 6 of <array 68 of <array 50 of <bool>>>>>>> %ebp-48 ]
    #    -52(%ebp)   4  [ $t7       <ptr(4) to <array 90 of <array 16 of <array 91 of <array 50 of <array 48 of <char>>>>>>> %ebp-52 ]
    #    -53(%ebp)   1  [ $t8       <bool> %ebp-53 ]
    #    -60(%ebp)   4  [ $t9       <ptr(4) to <array 16 of <array 61 of <array 6 of <array 68 of <array 50 of <bool>>>>>>> %ebp-60 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 10 of <array 76 of <array 47 of <array 15 of <array 47 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]
    #    -64(%ebp)   4  [ $v3       <int> %ebp-64 ]
    #   -314496088(%ebp)  314496024  [ $v4       <array 90 of <array 16 of <array 91 of <array 50 of <array 48 of <char>>>>>> %ebp-314496088 ]
    #   -334406512(%ebp)  19910424  [ $v5       <array 16 of <array 61 of <array 6 of <array 68 of <array 50 of <bool>>>>>> %ebp-334406512 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $334406500, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $83601625, %ecx        
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-314496088(%ebp)     # local array 'v4': 5 dimensions
    movl    $90,-314496084(%ebp)    #   dimension 1: 90 elements
    movl    $16,-314496080(%ebp)    #   dimension 2: 16 elements
    movl    $91,-314496076(%ebp)    #   dimension 3: 91 elements
    movl    $50,-314496072(%ebp)    #   dimension 4: 50 elements
    movl    $48,-314496068(%ebp)    #   dimension 5: 48 elements
    movl    $5,-334406512(%ebp)     # local array 'v5': 5 dimensions
    movl    $16,-334406508(%ebp)    #   dimension 1: 16 elements
    movl    $61,-334406504(%ebp)    #   dimension 2: 61 elements
    movl    $6,-334406500(%ebp)     #   dimension 3: 6 elements
    movl    $68,-334406496(%ebp)    #   dimension 4: 68 elements
    movl    $50,-334406492(%ebp)    #   dimension 5: 50 elements

    # function body
l_f2_1_while_cond:
    movl    $6358, %eax             #   1:     mul    t0 <- 6358, 89223
    movl    $89223, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     mul    t1 <- t0, 8480
    movl    $8480, %ebx            
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     div    t2 <- t1, 72790
    movl    $72790, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   4:     div    t3 <- t2, 71416
    movl    $71416, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   5:     div    t4 <- t3, 56524
    movl    $56524, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    $39203, %eax            #   6:     if     39203 > t4 goto 2_while_body
    movl    -40(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f2_2_while_body      
    jmp     l_f2_0                  #   7:     goto   0
l_f2_2_while_body:
    jmp     l_f2_1_while_cond       #   9:     goto   1_while_cond
l_f2_0:
    jmp     l_f2_5_if_true          #  11:     goto   5_if_true
    jmp     l_f2_6_if_false         #  12:     goto   6_if_false
l_f2_5_if_true:
    movl    $91260, %eax            #  14:     assign v3 <- 91260
    movl    %eax, -64(%ebp)        
    movl    $0, %eax                #  15:     if     0 = 0 goto 10
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_10                
    jmp     l_f2_11                 #  16:     goto   11
l_f2_10:
    movl    $1, %eax                #  18:     assign t5 <- 1
    movb    %al, -41(%ebp)         
    jmp     l_f2_12                 #  19:     goto   12
l_f2_11:
    movl    $0, %eax                #  21:     assign t5 <- 0
    movb    %al, -41(%ebp)         
l_f2_12:
    movzbl  -41(%ebp), %eax         #  23:     assign v1 <- t5
    movb    %al, 12(%ebp)          
    leal    -334406512(%ebp), %eax  #  24:     &()    t6 <- v5
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  25:     param  2 <- t6
    pushl   %eax                   
    leal    -314496088(%ebp), %eax  #  26:     &()    t7 <- v4
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  27:     param  1 <- t7
    pushl   %eax                   
    movl    $0, %eax                #  28:     param  0 <- 0
    pushl   %eax                   
    call    f1                      #  29:     call   t8 <- f1
    addl    $12, %esp              
    movb    %al, -53(%ebp)         
    movl    $78490, %eax            #  30:     return 78490
    jmp     l_f2_exit              
l_f2_17_while_cond:
    jmp     l_f2_17_while_cond      #  32:     goto   17_while_cond
    jmp     l_f2_4                  #  33:     goto   4
l_f2_6_if_false:
l_f2_4:
    leal    -334406512(%ebp), %eax  #  36:     &()    t9 <- v5
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  37:     param  2 <- t9
    pushl   %eax                   
    leal    -314496088(%ebp), %eax  #  38:     &()    t10 <- v4
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  39:     param  1 <- t10
    pushl   %eax                   
    jmp     l_f2_21                 #  40:     goto   21
    movl    $1, %eax                #  41:     assign t11 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_f2_22                 #  42:     goto   22
l_f2_21:
    movl    $0, %eax                #  44:     assign t11 <- 0
    movb    %al, -25(%ebp)         
l_f2_22:
    movzbl  -25(%ebp), %eax         #  46:     param  0 <- t11
    pushl   %eax                   
    call    f1                      #  47:     call   t12 <- f1
    addl    $12, %esp              
    movb    %al, -26(%ebp)         

l_f2_exit:
    # epilogue
    addl    $334406500, %esp        # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body
    jmp     l_test_exit            
    jmp     l_test_3_if_false       #   1:     goto   3_if_false
l_test_8_while_cond:
    jmp     l_test_7                #   3:     goto   7
    jmp     l_test_8_while_cond     #   4:     goto   8_while_cond
l_test_7:
    movl    $100, %eax              #   6:     assign v0 <- 100
    movb    %al, v0                
    jmp     l_test_4                #   7:     goto   4
l_test_4:
    jmp     l_test_1                #   9:     goto   1
l_test_3_if_false:
l_test_1:
l_test_12_while_cond:
    jmp     l_test_14               #  13:     goto   14
l_test_14:
    jmp     l_test_exit            
    jmp     l_test_18               #  16:     goto   18
l_test_18:
l_test_22_while_cond:
    movl    $100, %eax              #  19:     if     100 > 97 goto 23_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_23_while_body   
    jmp     l_test_21               #  20:     goto   21
l_test_23_while_body:
    jmp     l_test_22_while_cond    #  22:     goto   22_while_cond
l_test_21:
    jmp     l_test_12_while_cond    #  24:     goto   12_while_cond

l_test_exit:
    # epilogue
    addl    $0, %esp                # remove locals
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
