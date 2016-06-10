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
    #    -13(%ebp)   1  [ $t2       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t3       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 72 of <array 42 of <array 76 of <array 83 of <array 16 of <bool>>>>>>> %ebp+12 ]

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
    call    dummyCHARfunc           #   0:     call   t2 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
l_f0_2_while_cond:
    movl    $70402, %eax            #   2:     if     70402 # 62425 goto 5
    movl    $62425, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f0_5                 
    jmp     l_f0_6                  #   3:     goto   6
l_f0_5:
    movl    $1, %eax                #   5:     assign t3 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f0_7                  #   6:     goto   7
l_f0_6:
    movl    $0, %eax                #   8:     assign t3 <- 0
    movb    %al, -14(%ebp)         
l_f0_7:
    movzbl  -14(%ebp), %eax         #  10:     if     t3 = 1 goto 3_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_3_while_body      
    jmp     l_f0_1                  #  11:     goto   1
l_f0_3_while_body:
    movl    $99, %eax               #  13:     param  0 <- 99
    pushl   %eax                   
    call    WriteChar               #  14:     call   WriteChar
    addl    $4, %esp               
    jmp     l_f0_2_while_cond       #  15:     goto   2_while_cond
l_f0_1:
    call    dummyINTfunc            #  17:     call   t4 <- dummyINTfunc
    movl    %eax, -20(%ebp)        

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
    #    -16(%ebp)   4  [ $t10      <ptr(4) to <array 72 of <array 42 of <array 76 of <array 83 of <array 16 of <bool>>>>>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t11      <bool> %ebp-17 ]
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t13      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t14      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t15      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t16      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t2       <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t3       <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t4       <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t5       <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t6       <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t7       <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t8       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t9       <int> %ebp-72 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 76 of <array 26 of <array 39 of <array 98 of <array 57 of <bool>>>>>>> %ebp+8 ]
    #    -76(%ebp)   4  [ $v1       <int> %ebp-76 ]
    #   -305206372(%ebp)  305206296  [ $v2       <array 72 of <array 42 of <array 76 of <array 83 of <array 16 of <bool>>>>>> %ebp-305206372 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $305206360, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $76301590, %ecx        
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-305206372(%ebp)     # local array 'v2': 5 dimensions
    movl    $72,-305206368(%ebp)    #   dimension 1: 72 elements
    movl    $42,-305206364(%ebp)    #   dimension 2: 42 elements
    movl    $76,-305206360(%ebp)    #   dimension 3: 76 elements
    movl    $83,-305206356(%ebp)    #   dimension 4: 83 elements
    movl    $16,-305206352(%ebp)    #   dimension 5: 16 elements

    # function body
    movl    $82445, %eax            #   0:     add    t2 <- 82445, 55979
    movl    $55979, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #   1:     add    t3 <- t2, 43795
    movl    $43795, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #   2:     sub    t4 <- t3, 40207
    movl    $40207, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #   3:     sub    t5 <- t4, 48416
    movl    $48416, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #   4:     assign v1 <- t5
    movl    %eax, -76(%ebp)        
l_f1_2_while_cond:
    movl    $53475, %eax            #   6:     add    t6 <- 53475, 48498
    movl    $48498, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #   7:     sub    t7 <- t6, 83171
    movl    $83171, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #   8:     sub    t8 <- t7, 49039
    movl    $49039, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #   9:     sub    t9 <- t8, 85517
    movl    $85517, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    $60370, %eax            #  10:     if     60370 <= t9 goto 3_while_body
    movl    -72(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f1_3_while_body      
    jmp     l_f1_1                  #  11:     goto   1
l_f1_3_while_body:
    jmp     l_f1_2_while_cond       #  13:     goto   2_while_cond
l_f1_1:
    leal    -305206372(%ebp), %eax  #  15:     &()    t10 <- v2
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  16:     param  1 <- t10
    pushl   %eax                   
    movl    $99742, %eax            #  17:     if     99742 = 64398 goto 6
    movl    $64398, %ebx           
    cmpl    %ebx, %eax             
    je      l_f1_6                 
    jmp     l_f1_7                  #  18:     goto   7
l_f1_6:
    movl    $1, %eax                #  20:     assign t11 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f1_8                  #  21:     goto   8
l_f1_7:
    movl    $0, %eax                #  23:     assign t11 <- 0
    movb    %al, -17(%ebp)         
l_f1_8:
    movzbl  -17(%ebp), %eax         #  25:     param  0 <- t11
    pushl   %eax                   
    call    f0                      #  26:     call   t12 <- f0
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  27:     div    t13 <- t12, 99436
    movl    $99436, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  28:     div    t14 <- t13, 36571
    movl    $36571, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  29:     mul    t15 <- t14, 63687
    movl    $63687, %ebx           
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  30:     div    t16 <- t15, 15020
    movl    $15020, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  31:     return t16
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $305206360, %esp        # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t2       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t3       <ptr(4) to <array 5 of <char>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t4       <char> %ebp-21 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]

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
    call    dummyBOOLfunc           #   0:     call   t2 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $18319, %eax            #   1:     if     18319 <= 57042 goto 2_if_true
    movl    $57042, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_2_if_true         
    jmp     l_f2_3_if_false         #   2:     goto   3_if_false
l_f2_2_if_true:
    leal    _str_1, %eax            #   4:     &()    t3 <- _str_1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   5:     param  0 <- t3
    pushl   %eax                   
    call    WriteStr                #   6:     call   WriteStr
    addl    $4, %esp               
    jmp     l_f2_1                  #   7:     goto   1
l_f2_3_if_false:
l_f2_1:
    call    dummyCHARfunc           #  10:     call   t4 <- dummyCHARfunc
    movb    %al, -21(%ebp)         

l_f2_exit:
    # epilogue
    addl    $12, %esp               # remove locals
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
    movzbl  -13(%ebp), %eax         #   1:     if     t0 # 0 goto 1_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_1_if_true       
    jmp     l_test_2_if_false       #   2:     goto   2_if_false
l_test_1_if_true:
    movl    $1, %eax                #   4:     assign v0 <- 1
    movb    %al, v0                
    jmp     l_test_0                #   5:     goto   0
l_test_2_if_false:
l_test_0:
    jmp     l_test_7_if_false       #   8:     goto   7_if_false
l_test_9_while_cond:
    movl    $97, %eax               #  10:     if     97 # 97 goto 10_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_10_while_body   
    jmp     l_test_8                #  11:     goto   8
l_test_10_while_body:
    jmp     l_test_9_while_cond     #  13:     goto   9_while_cond
l_test_8:
    movl    $0, %eax                #  15:     assign v0 <- 0
    movb    %al, v0                
    movl    $63168, %eax            #  16:     if     63168 <= 2027 goto 14_if_true
    movl    $2027, %ebx            
    cmpl    %ebx, %eax             
    jle     l_test_14_if_true      
    jmp     l_test_15_if_false      #  17:     goto   15_if_false
l_test_14_if_true:
    jmp     l_test_13               #  19:     goto   13
l_test_15_if_false:
l_test_13:
    call    dummyProcedure          #  22:     call   dummyProcedure
    call    dummyBOOLfunc           #  23:     call   t1 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    jmp     l_test_5                #  24:     goto   5
l_test_7_if_false:
l_test_5:
    jmp     l_test_exit            

l_test_exit:
    # epilogue
    addl    $4, %esp                # remove locals
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
v0:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
