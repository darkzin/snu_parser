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
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t10      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t11      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t12      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t13      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t14      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t15      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t16      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t17      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t2       <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t3       <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t4       <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t5       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t6       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t7       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t8       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t9       <int> %ebp-84 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 16 of <array 92 of <array 8 of <array 24 of <array 12 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 99 of <array 49 of <array 82 of <array 70 of <array 5 of <int>>>>>>> %ebp+20 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $72, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $18, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    jmp     l_f0_2_if_false         #   0:     goto   2_if_false
    jmp     l_f0_2_if_false         #   1:     goto   2_if_false
    jmp     l_f0_2_if_false         #   2:     goto   2_if_false
l_f0_6_while_cond:
    movl    $14620, %eax            #   4:     if     14620 >= 94208 goto 7_while_body
    movl    $94208, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_7_while_body      
    jmp     l_f0_5                  #   5:     goto   5
l_f0_7_while_body:
    jmp     l_f0_6_while_cond       #   7:     goto   6_while_cond
l_f0_5:
    jmp     l_f0_0                  #   9:     goto   0
l_f0_2_if_false:
l_f0_0:
    call    dummyCHARfunc           #  12:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $2, %eax                #  13:     param  1 <- 2
    pushl   %eax                   
    movl    16(%ebp), %eax          #  14:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  15:     call   t1 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    $56404, %eax            #  16:     mul    t2 <- 56404, t1
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  17:     add    t3 <- t2, 73124
    movl    $73124, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    $3, %eax                #  18:     param  1 <- 3
    pushl   %eax                   
    movl    16(%ebp), %eax          #  19:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  20:     call   t4 <- DIM
    addl    $8, %esp               
    movl    %eax, -64(%ebp)        
    movl    -60(%ebp), %eax         #  21:     mul    t5 <- t3, t4
    movl    -64(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  22:     add    t6 <- t5, 70299
    movl    $70299, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    $4, %eax                #  23:     param  1 <- 4
    pushl   %eax                   
    movl    16(%ebp), %eax          #  24:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  25:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -76(%ebp)        
    movl    -72(%ebp), %eax         #  26:     mul    t8 <- t6, t7
    movl    -76(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  27:     add    t9 <- t8, 39167
    movl    $39167, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    $5, %eax                #  28:     param  1 <- 5
    pushl   %eax                   
    movl    16(%ebp), %eax          #  29:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  30:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -84(%ebp), %eax         #  31:     mul    t11 <- t9, t10
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  32:     add    t12 <- t11, 8225
    movl    $8225, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  33:     mul    t13 <- t12, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    16(%ebp), %eax          #  34:     param  0 <- v3
    pushl   %eax                   
    call    DOFS                    #  35:     call   t14 <- DOFS
    addl    $4, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  36:     add    t15 <- t13, t14
    movl    -40(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    16(%ebp), %eax          #  37:     add    t16 <- v3, t15
    movl    -44(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movzbl  -13(%ebp), %eax         #  38:     assign @t16 <- t0
    movl    -48(%ebp), %edi        
    movb    %al, (%edi)            
    call    ReadInt                 #  39:     call   t17 <- ReadInt
    movl    %eax, -52(%ebp)        

l_f0_exit:
    # epilogue
    addl    $72, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t3       <char> %ebp-22 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <int> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <char> %ebp+16 ]
    #    -23(%ebp)   1  [ $v4       <bool> %ebp-23 ]

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
    movl    $82937, %eax            #   0:     if     82937 <= 67451 goto 1_if_true
    movl    $67451, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   1:     goto   2_if_false
l_f1_1_if_true:
    movl    $68653, %eax            #   3:     return 68653
    jmp     l_f1_exit              
    movl    $99837, %eax            #   4:     assign v2 <- 99837
    movl    %eax, 12(%ebp)         
    call    dummyINTfunc            #   5:     call   t0 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    call    dummyINTfunc            #   6:     call   t1 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    jmp     l_f1_0                  #   7:     goto   0
l_f1_2_if_false:
l_f1_0:
    jmp     l_f1_10_if_false        #  10:     goto   10_if_false
l_f1_12_while_cond:
    movl    $76104, %eax            #  12:     if     76104 > 45034 goto 13_while_body
    movl    $45034, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_13_while_body     
    jmp     l_f1_11                 #  13:     goto   11
l_f1_13_while_body:
    jmp     l_f1_12_while_cond      #  15:     goto   12_while_cond
l_f1_11:
l_f1_16_while_cond:
    jmp     l_f1_15                 #  18:     goto   15
    jmp     l_f1_16_while_cond      #  19:     goto   16_while_cond
l_f1_15:
    movl    $8764, %eax             #  21:     param  0 <- 8764
    pushl   %eax                   
    call    WriteInt                #  22:     call   WriteInt
    addl    $4, %esp               
    jmp     l_f1_8                  #  23:     goto   8
l_f1_10_if_false:
l_f1_8:
l_f1_20_while_cond:
    movl    $97, %eax               #  27:     if     97 >= 100 goto 23
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_f1_23                
    jmp     l_f1_24                 #  28:     goto   24
l_f1_23:
    movl    $1, %eax                #  30:     assign t2 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f1_25                 #  31:     goto   25
l_f1_24:
    movl    $0, %eax                #  33:     assign t2 <- 0
    movb    %al, -21(%ebp)         
l_f1_25:
    movzbl  -21(%ebp), %eax         #  35:     assign v4 <- t2
    movb    %al, -23(%ebp)         
    call    dummyCHARfunc           #  36:     call   t3 <- dummyCHARfunc
    movb    %al, -22(%ebp)         
    jmp     l_f1_20_while_cond      #  37:     goto   20_while_cond

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
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $v1       <char> %ebp-29 ]

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
l_f2_2_while_cond:
    movl    $36923, %eax            #   2:     div    t1 <- 36923, 89759
    movl    $89759, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     sub    t2 <- t1, 91485
    movl    $91485, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   4:     sub    t3 <- t2, 91904
    movl    $91904, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $93504, %eax            #   5:     if     93504 # t3 goto 3_while_body
    movl    -28(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f2_3_while_body      
    jmp     l_f2_1                  #   6:     goto   1
l_f2_3_while_body:
    jmp     l_f2_2_while_cond       #   8:     goto   2_while_cond
l_f2_1:
    movl    $99, %eax               #  10:     assign v1 <- 99
    movb    %al, -29(%ebp)         

l_f2_exit:
    # epilogue
    addl    $20, %esp               # remove locals
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
    movl    $97, %eax               #   0:     assign v0 <- 97
    movb    %al, v0                
    jmp     l_test_exit            
    jmp     l_test_exit            
    jmp     l_test_5_if_false       #   3:     goto   5_if_false
    movl    $97, %eax               #   4:     if     97 < 100 goto 7_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_test_7_if_true       
    jmp     l_test_8_if_false       #   5:     goto   8_if_false
l_test_7_if_true:
    movl    $1, %eax                #   7:     assign v1 <- 1
    movb    %al, v1                
    jmp     l_test_6                #   8:     goto   6
l_test_8_if_false:
l_test_6:
    jmp     l_test_3                #  11:     goto   3
l_test_5_if_false:
l_test_3:

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
v1:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
