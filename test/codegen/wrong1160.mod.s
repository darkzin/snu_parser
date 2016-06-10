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
    #    -24(%ebp)   4  [ $t9       <int> %ebp-24 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 38 of <array 6 of <array 25 of <array 15 of <array 34 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 1 of <array 93 of <array 6 of <array 22 of <array 8 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 16 of <array 57 of <array 44 of <array 57 of <array 78 of <int>>>>>>> %ebp+16 ]

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
    jmp     l_f0_3                  #   0:     goto   3
l_f0_3:
    call    ReadInt                 #   2:     call   t9 <- ReadInt
    movl    %eax, -24(%ebp)        
l_f0_8_while_cond:
    jmp     l_f0_8_while_cond       #   4:     goto   8_while_cond
l_f0_11_while_cond:
    movl    $100, %eax              #   6:     if     100 >= 98 goto 12_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_12_while_body     
    jmp     l_f0_10                 #   7:     goto   10
l_f0_12_while_body:
    jmp     l_f0_11_while_cond      #   9:     goto   11_while_cond
l_f0_10:
    jmp     l_f0_0                  #  11:     goto   0
l_f0_0:
    call    dummyINTfunc            #  13:     call   t10 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    call    ReadInt                 #  14:     call   t11 <- ReadInt
    movl    %eax, -20(%ebp)        

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
    #    -13(%ebp)   1  [ $t10      <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t11      <ptr(4) to <array 16 of <array 57 of <array 44 of <array 57 of <array 78 of <int>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <ptr(4) to <array 1 of <array 93 of <array 6 of <array 22 of <array 8 of <bool>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t13      <ptr(4) to <array 38 of <array 6 of <array 25 of <array 15 of <array 34 of <int>>>>>>> %ebp-28 ]
    #    -29(%ebp)   1  [ $t14      <char> %ebp-29 ]
    #    -36(%ebp)   4  [ $t15      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t16      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t17      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t18      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t19      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t9       <int> %ebp-56 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #   -11628080(%ebp)  11628024  [ $v2       <array 38 of <array 6 of <array 25 of <array 15 of <array 34 of <int>>>>>> %ebp-11628080 ]
    #   -11726312(%ebp)  98232  [ $v3       <array 1 of <array 93 of <array 6 of <array 22 of <array 8 of <bool>>>>>> %ebp-11726312 ]
    #   -725362688(%ebp)  713636376  [ $v4       <array 16 of <array 57 of <array 44 of <array 57 of <array 78 of <int>>>>>> %ebp-725362688 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $725362676, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $181340669, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-11628080(%ebp)      # local array 'v2': 5 dimensions
    movl    $38,-11628076(%ebp)     #   dimension 1: 38 elements
    movl    $6,-11628072(%ebp)      #   dimension 2: 6 elements
    movl    $25,-11628068(%ebp)     #   dimension 3: 25 elements
    movl    $15,-11628064(%ebp)     #   dimension 4: 15 elements
    movl    $34,-11628060(%ebp)     #   dimension 5: 34 elements
    movl    $5,-11726312(%ebp)      # local array 'v3': 5 dimensions
    movl    $1,-11726308(%ebp)      #   dimension 1: 1 elements
    movl    $93,-11726304(%ebp)     #   dimension 2: 93 elements
    movl    $6,-11726300(%ebp)      #   dimension 3: 6 elements
    movl    $22,-11726296(%ebp)     #   dimension 4: 22 elements
    movl    $8,-11726292(%ebp)      #   dimension 5: 8 elements
    movl    $5,-725362688(%ebp)     # local array 'v4': 5 dimensions
    movl    $16,-725362684(%ebp)    #   dimension 1: 16 elements
    movl    $57,-725362680(%ebp)    #   dimension 2: 57 elements
    movl    $44,-725362676(%ebp)    #   dimension 3: 44 elements
    movl    $57,-725362672(%ebp)    #   dimension 4: 57 elements
    movl    $78,-725362668(%ebp)    #   dimension 5: 78 elements

    # function body
    call    dummyINTfunc            #   0:     call   t9 <- dummyINTfunc
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #   1:     return t9
    jmp     l_f1_exit              
l_f1_2_while_cond:
    movl    $34931, %eax            #   3:     if     34931 >= 87341 goto 3_while_body
    movl    $87341, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_3_while_body      
    jmp     l_f1_1                  #   4:     goto   1
l_f1_3_while_body:
    jmp     l_f1_7_if_false         #   6:     goto   7_if_false
    jmp     l_f1_5                  #   7:     goto   5
l_f1_7_if_false:
l_f1_5:
    movl    $81387, %eax            #  10:     assign v0 <- 81387
    movl    %eax, 8(%ebp)          
    call    dummyCHARfunc           #  11:     call   t10 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    leal    -725362688(%ebp), %eax  #  12:     &()    t11 <- v4
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  13:     param  2 <- t11
    pushl   %eax                   
    leal    -11726312(%ebp), %eax   #  14:     &()    t12 <- v3
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  15:     param  1 <- t12
    pushl   %eax                   
    leal    -11628080(%ebp), %eax   #  16:     &()    t13 <- v2
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  17:     param  0 <- t13
    pushl   %eax                   
    call    f0                      #  18:     call   t14 <- f0
    addl    $12, %esp              
    movb    %al, -29(%ebp)         
    jmp     l_f1_2_while_cond       #  19:     goto   2_while_cond
l_f1_1:
    movl    $307, %eax              #  21:     mul    t15 <- 307, 38930
    movl    $38930, %ebx           
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  22:     mul    t16 <- t15, 72159
    movl    $72159, %ebx           
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  23:     mul    t17 <- t16, 94107
    movl    $94107, %ebx           
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  24:     mul    t18 <- t17, 62481
    movl    $62481, %ebx           
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  25:     add    t19 <- t18, 49188
    movl    $49188, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  26:     return t19
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $725362676, %esp        # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t13      <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t9       <bool> %ebp-29 ]
    #    -36(%ebp)   4  [ $v0       <int> %ebp-36 ]

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
    jmp     l_f2_4                  #   0:     goto   4
    jmp     l_f2_4                  #   1:     goto   4
l_f2_4:
    movl    $1, %eax                #   3:     assign t9 <- 1
    movb    %al, -29(%ebp)         
    jmp     l_f2_6                  #   4:     goto   6
    movl    $0, %eax                #   5:     assign t9 <- 0
    movb    %al, -29(%ebp)         
l_f2_6:
    movl    $1, %eax                #   7:     if     1 # t9 goto 1_if_true
    movzbl  -29(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   8:     goto   2_if_false
l_f2_1_if_true:
    movl    $97, %eax               #  10:     if     97 = 97 goto 10
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    je      l_f2_10                
    jmp     l_f2_11                 #  11:     goto   11
l_f2_10:
    movl    $1, %eax                #  13:     assign t10 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_12                 #  14:     goto   12
l_f2_11:
    movl    $0, %eax                #  16:     assign t10 <- 0
    movb    %al, -13(%ebp)         
l_f2_12:
    movzbl  -13(%ebp), %eax         #  18:     return t10
    jmp     l_f2_exit              
    movl    $98, %eax               #  19:     if     98 > 99 goto 15_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f2_15_if_true        
    jmp     l_f2_16_if_false        #  20:     goto   16_if_false
l_f2_15_if_true:
    jmp     l_f2_14                 #  22:     goto   14
l_f2_16_if_false:
l_f2_14:
    jmp     l_f2_0                  #  25:     goto   0
l_f2_2_if_false:
l_f2_0:
    movl    $13072, %eax            #  28:     mul    t11 <- 13072, 14489
    movl    $14489, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  29:     mul    t12 <- t11, 36674
    movl    $36674, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  30:     mul    t13 <- t12, 93196
    movl    $93196, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    $69466, %eax            #  31:     if     69466 # t13 goto 19_if_true
    movl    -28(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f2_19_if_true        
    jmp     l_f2_20_if_false        #  32:     goto   20_if_false
l_f2_19_if_true:
    jmp     l_f2_18                 #  34:     goto   18
l_f2_20_if_false:
l_f2_18:
    movl    $20527, %eax            #  37:     assign v0 <- 20527
    movl    %eax, -36(%ebp)        

l_f2_exit:
    # epilogue
    addl    $24, %esp               # remove locals
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
    #    -44(%ebp)   4  [ $t7       <int> %ebp-44 ]
    #    -45(%ebp)   1  [ $t8       <char> %ebp-45 ]

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
    movl    $10686, %eax            #   0:     sub    t0 <- 10686, 98293
    movl    $98293, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $42244, %eax            #   1:     div    t1 <- 42244, 18321
    movl    $18321, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #   2:     if     t0 < t1 goto 1_if_true
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_test_1_if_true       
    jmp     l_test_2_if_false       #   3:     goto   2_if_false
l_test_1_if_true:
    jmp     l_test_0                #   5:     goto   0
l_test_2_if_false:
l_test_0:
    jmp     l_test_exit            
    movl    $74590, %eax            #   9:     param  1 <- 74590
    pushl   %eax                   
    movl    $68641, %eax            #  10:     add    t2 <- 68641, 73067
    movl    $73067, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  11:     sub    t3 <- t2, 32973
    movl    $32973, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  12:     param  0 <- t3
    pushl   %eax                   
    call    f1                      #  13:     call   t4 <- f1
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  14:     div    t5 <- t4, 91046
    movl    $91046, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  15:     mul    t6 <- t5, 92312
    movl    $92312, %ebx           
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  16:     div    t7 <- t6, 98717
    movl    $98717, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  17:     assign v0 <- t7
    movl    %eax, v0               
    call    dummyCHARfunc           #  18:     call   t8 <- dummyCHARfunc
    movb    %al, -45(%ebp)         
    movl    $89226, %eax            #  19:     assign v0 <- 89226
    movl    %eax, v0               

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








    # end of global data section
    #-----------------------------------------

    .end
##################################################
