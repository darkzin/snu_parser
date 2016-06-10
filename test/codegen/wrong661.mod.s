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
    #    -13(%ebp)   1  [ $t13      <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t14      <char> %ebp-14 ]
    #    -20(%ebp)   4  [ $t15      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t16      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t17      <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $v1       <char> %ebp-29 ]
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
l_f0_1_while_cond:
    movl    $100, %eax              #   1:     assign v1 <- 100
    movb    %al, -29(%ebp)         
l_f0_5_while_cond:
    jmp     l_f0_4                  #   3:     goto   4
    jmp     l_f0_5_while_cond       #   4:     goto   5_while_cond
l_f0_4:
    call    dummyBOOLfunc           #   6:     call   t13 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_f0_1_while_cond       #   7:     goto   1_while_cond
    call    dummyCHARfunc           #   8:     call   t14 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   9:     return t14
    jmp     l_f0_exit              
    movl    $80857, %eax            #  10:     add    t15 <- 80857, 8593
    movl    $8593, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  11:     add    t16 <- t15, 89820
    movl    $89820, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  12:     add    t17 <- t16, 42894
    movl    $42894, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  13:     assign v2 <- t17
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
    #    -13(%ebp)   1  [ $t13      <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t14      <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t15      <bool> %ebp-15 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 6 of <array 5 of <array 8 of <array 1 of <array 1 of <bool>>>>>>> %ebp+8 ]
    #    -16(%ebp)   1  [ $v2       <bool> %ebp-16 ]

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
    call    f0                      #   0:     call   t13 <- f0
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     if     t13 < 100 goto 1_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   2:     goto   2_if_false
l_f1_1_if_true:
    jmp     l_f1_0                  #   4:     goto   0
l_f1_2_if_false:
l_f1_0:
    call    f0                      #   7:     call   t14 <- f0
    movb    %al, -14(%ebp)         
    movl    $99, %eax               #   8:     if     99 > t14 goto 5
    movzbl  -14(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f1_5                 
    jmp     l_f1_6                  #   9:     goto   6
l_f1_5:
    movl    $1, %eax                #  11:     assign t15 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f1_7                  #  12:     goto   7
l_f1_6:
    movl    $0, %eax                #  14:     assign t15 <- 0
    movb    %al, -15(%ebp)         
l_f1_7:
    movzbl  -15(%ebp), %eax         #  16:     assign v2 <- t15
    movb    %al, -16(%ebp)         
    jmp     l_f1_12                 #  17:     goto   12
    jmp     l_f1_10_if_true         #  18:     goto   10_if_true
l_f1_12:
l_f1_10_if_true:
    jmp     l_f1_9                  #  21:     goto   9
l_f1_9:

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
    #    -16(%ebp)   4  [ $t13      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t14      <ptr(4) to <array 6 of <array 5 of <array 8 of <array 1 of <array 1 of <bool>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t15      <char> %ebp-21 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #   -288(%ebp)  264  [ $v2       <array 6 of <array 5 of <array 8 of <array 1 of <array 1 of <bool>>>>>> %ebp-288 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $276, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $69, %ecx              
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-288(%ebp)           # local array 'v2': 5 dimensions
    movl    $6,-284(%ebp)           #   dimension 1: 6 elements
    movl    $5,-280(%ebp)           #   dimension 2: 5 elements
    movl    $8,-276(%ebp)           #   dimension 3: 8 elements
    movl    $1,-272(%ebp)           #   dimension 4: 1 elements
    movl    $1,-268(%ebp)           #   dimension 5: 1 elements

    # function body
    jmp     l_f2_exit              
    call    ReadInt                 #   1:     call   t13 <- ReadInt
    movl    %eax, -16(%ebp)        
    leal    -288(%ebp), %eax        #   2:     &()    t14 <- v2
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     param  0 <- t14
    pushl   %eax                   
    call    f1                      #   4:     call   t15 <- f1
    addl    $4, %esp               
    movb    %al, -21(%ebp)         

l_f2_exit:
    # epilogue
    addl    $276, %esp              # remove locals
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
    #    -24(%ebp)   4  [ $t10      <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t11      <bool> %ebp-25 ]
    #    -32(%ebp)   4  [ $t12      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t2       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t3       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t4       <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t5       <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t6       <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t7       <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t8       <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t9       <int> %ebp-64 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $52, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $13, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    dummyINTfunc            #   0:     call   t0 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    call    dummyCHARfunc           #   1:     call   t1 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #   2:     assign v0 <- t1
    movb    %al, v0                
l_test_3_while_cond:
    movl    $36122, %eax            #   4:     div    t2 <- 36122, 18193
    movl    $18193, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   5:     mul    t3 <- t2, 80628
    movl    $80628, %ebx           
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #   6:     mul    t4 <- t3, 38985
    movl    $38985, %ebx           
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #   7:     mul    t5 <- t4, 45240
    movl    $45240, %ebx           
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #   8:     div    t6 <- t5, 97190
    movl    $97190, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    $31142, %eax            #   9:     sub    t7 <- 31142, 34272
    movl    $34272, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  10:     add    t8 <- t7, 2485
    movl    $2485, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  11:     sub    t9 <- t8, 25562
    movl    $25562, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    -52(%ebp), %eax         #  12:     if     t6 >= t9 goto 4_while_body
    movl    -64(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_test_4_while_body    
    jmp     l_test_2                #  13:     goto   2
l_test_4_while_body:
    jmp     l_test_3_while_cond     #  15:     goto   3_while_cond
l_test_2:
l_test_7_while_cond:
    movl    $39132, %eax            #  18:     if     39132 = 59029 goto 8_while_body
    movl    $59029, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_8_while_body    
    jmp     l_test_6                #  19:     goto   6
l_test_8_while_body:
    movl    $0, %eax                #  21:     assign v1 <- 0
    movb    %al, v1                
    jmp     l_test_7_while_cond     #  22:     goto   7_while_cond
l_test_6:
    movl    $45341, %eax            #  24:     if     45341 >= 59554 goto 12_if_true
    movl    $59554, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_12_if_true      
    jmp     l_test_13_if_false      #  25:     goto   13_if_false
l_test_12_if_true:
    movl    $62850, %eax            #  27:     add    t10 <- 62850, 36154
    movl    $36154, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $89356, %eax            #  28:     if     89356 >= t10 goto 16
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_test_16              
    jmp     l_test_17               #  29:     goto   17
l_test_16:
    movl    $1, %eax                #  31:     assign t11 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_test_18               #  32:     goto   18
l_test_17:
    movl    $0, %eax                #  34:     assign t11 <- 0
    movb    %al, -25(%ebp)         
l_test_18:
    movzbl  -25(%ebp), %eax         #  36:     param  0 <- t11
    pushl   %eax                   
    call    f2                      #  37:     call   f2
    addl    $4, %esp               
    call    dummyINTfunc            #  38:     call   t12 <- dummyINTfunc
    movl    %eax, -32(%ebp)        
    jmp     l_test_11               #  39:     goto   11
l_test_13_if_false:
l_test_11:
    jmp     l_test_exit            

l_test_exit:
    # epilogue
    addl    $52, %esp               # remove locals
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
