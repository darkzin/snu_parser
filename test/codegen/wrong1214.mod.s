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
    #    -14(%ebp)   1  [ $t8       <char> %ebp-14 ]
    #    -20(%ebp)   4  [ $t9       <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 27 of <array 63 of <array 80 of <array 49 of <array 7 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]

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
    call    dummyCHARfunc           #   0:     call   t8 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   1:     param  0 <- t8
    pushl   %eax                   
    call    WriteChar               #   2:     call   WriteChar
    addl    $4, %esp               
    movl    $61885, %eax            #   3:     add    t9 <- 61885, 37277
    movl    $37277, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $82146, %eax            #   4:     if     82146 < t9 goto 2
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f0_2                 
    jmp     l_f0_3                  #   5:     goto   3
l_f0_2:
    movl    $1, %eax                #   7:     assign t10 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_4                  #   8:     goto   4
l_f0_3:
    movl    $0, %eax                #  10:     assign t10 <- 0
    movb    %al, -13(%ebp)         
l_f0_4:
    movzbl  -13(%ebp), %eax         #  12:     return t10
    jmp     l_f0_exit              
l_f0_7_while_cond:
    jmp     l_f0_6                  #  14:     goto   6
    jmp     l_f0_6                  #  15:     goto   6
    jmp     l_f0_6                  #  16:     goto   6
    jmp     l_f0_6                  #  17:     goto   6
    jmp     l_f0_7_while_cond       #  18:     goto   7_while_cond
l_f0_6:

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
    #    -16(%ebp)   4  [ $t10      <ptr(4) to <array 27 of <array 63 of <array 80 of <array 49 of <array 7 of <int>>>>>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t11      <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t12      <bool> %ebp-18 ]
    #    -19(%ebp)   1  [ $t13      <bool> %ebp-19 ]
    #    -20(%ebp)   1  [ $t8       <char> %ebp-20 ]
    #    -21(%ebp)   1  [ $t9       <bool> %ebp-21 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 78 of <array 33 of <array 30 of <array 87 of <array 1 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 34 of <array 93 of <array 17 of <array 56 of <array 53 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 67 of <array 87 of <array 79 of <array 17 of <array 53 of <int>>>>>>> %ebp+20 ]
    #   -186701808(%ebp)  186701784  [ $v5       <array 27 of <array 63 of <array 80 of <array 49 of <array 7 of <int>>>>>> %ebp-186701808 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $186701796, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $46675449, %ecx        
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-186701808(%ebp)     # local array 'v5': 5 dimensions
    movl    $27,-186701804(%ebp)    #   dimension 1: 27 elements
    movl    $63,-186701800(%ebp)    #   dimension 2: 63 elements
    movl    $80,-186701796(%ebp)    #   dimension 3: 80 elements
    movl    $49,-186701792(%ebp)    #   dimension 4: 49 elements
    movl    $7,-186701788(%ebp)     #   dimension 5: 7 elements

    # function body
    call    dummyCHARfunc           #   0:     call   t8 <- dummyCHARfunc
    movb    %al, -20(%ebp)         
    movl    $98, %eax               #   1:     if     98 > t8 goto 1
    movzbl  -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f1_1                 
    jmp     l_f1_2                  #   2:     goto   2
l_f1_1:
    movl    $1, %eax                #   4:     assign t9 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f1_3                  #   5:     goto   3
l_f1_2:
    movl    $0, %eax                #   7:     assign t9 <- 0
    movb    %al, -21(%ebp)         
l_f1_3:
    movzbl  -21(%ebp), %eax         #   9:     return t9
    jmp     l_f1_exit              
    movl    $66833, %eax            #  10:     if     66833 # 28398 goto 6_if_true
    movl    $28398, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f1_6_if_true         
    jmp     l_f1_7_if_false         #  11:     goto   7_if_false
l_f1_6_if_true:
    movl    $1, %eax                #  13:     return 1
    jmp     l_f1_exit              
    movl    $1, %eax                #  14:     return 1
    jmp     l_f1_exit              
    jmp     l_f1_13_if_false        #  15:     goto   13_if_false
    jmp     l_f1_11                 #  16:     goto   11
l_f1_13_if_false:
l_f1_11:
l_f1_15_while_cond:
    movl    $97, %eax               #  20:     if     97 < 100 goto 16_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f1_16_while_body     
    jmp     l_f1_14                 #  21:     goto   14
l_f1_16_while_body:
    jmp     l_f1_15_while_cond      #  23:     goto   15_while_cond
l_f1_14:
    jmp     l_f1_5                  #  25:     goto   5
l_f1_7_if_false:
l_f1_5:
    movl    $100, %eax              #  28:     param  1 <- 100
    pushl   %eax                   
    leal    -186701808(%ebp), %eax  #  29:     &()    t10 <- v5
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  30:     param  0 <- t10
    pushl   %eax                   
    call    f0                      #  31:     call   t11 <- f0
    addl    $8, %esp               
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #  32:     if     t11 = 1 goto 23
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_23                
l_f1_23:
    movl    $1, %eax                #  34:     assign t12 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_f1_25                 #  35:     goto   25
    movl    $0, %eax                #  36:     assign t12 <- 0
    movb    %al, -18(%ebp)         
l_f1_25:
    movl    $1, %eax                #  38:     if     1 = t12 goto 19
    movzbl  -18(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f1_19                
    jmp     l_f1_20                 #  39:     goto   20
l_f1_19:
    movl    $1, %eax                #  41:     assign t13 <- 1
    movb    %al, -19(%ebp)         
    jmp     l_f1_21                 #  42:     goto   21
l_f1_20:
    movl    $0, %eax                #  44:     assign t13 <- 0
    movb    %al, -19(%ebp)         
l_f1_21:
    movzbl  -19(%ebp), %eax         #  46:     return t13
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $186701796, %esp        # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t10      <ptr(4) to <array 78 of <array 33 of <array 30 of <array 87 of <array 1 of <char>>>>>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t11      <bool> %ebp-17 ]
    #    -24(%ebp)   4  [ $t8       <ptr(4) to <array 67 of <array 87 of <array 79 of <array 17 of <array 53 of <int>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t9       <ptr(4) to <array 34 of <array 93 of <array 17 of <array 56 of <array 53 of <char>>>>>>> %ebp-28 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 97 of <array 31 of <array 31 of <array 42 of <array 84 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 50 of <array 12 of <array 25 of <array 66 of <array 63 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 30 of <array 41 of <array 14 of <array 53 of <array 17 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 9 of <array 9 of <array 30 of <array 33 of <array 13 of <int>>>>>>> %ebp+20 ]
    #   -6718192(%ebp)  6718164  [ $v5       <array 78 of <array 33 of <array 30 of <array 87 of <array 1 of <char>>>>>> %ebp-6718192 ]
    #   -166260088(%ebp)  159541896  [ $v6       <array 34 of <array 93 of <array 17 of <array 56 of <array 53 of <char>>>>>> %ebp-166260088 ]
    #   -1825869676(%ebp)  1659609588  [ $v7       <array 67 of <array 87 of <array 79 of <array 17 of <array 53 of <int>>>>>> %ebp-1825869676 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $1825869664, %esp       # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $456467416, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-6718192(%ebp)       # local array 'v5': 5 dimensions
    movl    $78,-6718188(%ebp)      #   dimension 1: 78 elements
    movl    $33,-6718184(%ebp)      #   dimension 2: 33 elements
    movl    $30,-6718180(%ebp)      #   dimension 3: 30 elements
    movl    $87,-6718176(%ebp)      #   dimension 4: 87 elements
    movl    $1,-6718172(%ebp)       #   dimension 5: 1 elements
    movl    $5,-166260088(%ebp)     # local array 'v6': 5 dimensions
    movl    $34,-166260084(%ebp)    #   dimension 1: 34 elements
    movl    $93,-166260080(%ebp)    #   dimension 2: 93 elements
    movl    $17,-166260076(%ebp)    #   dimension 3: 17 elements
    movl    $56,-166260072(%ebp)    #   dimension 4: 56 elements
    movl    $53,-166260068(%ebp)    #   dimension 5: 53 elements
    movl    $5,-1825869676(%ebp)    # local array 'v7': 5 dimensions
    movl    $67,-1825869672(%ebp)   #   dimension 1: 67 elements
    movl    $87,-1825869668(%ebp)   #   dimension 2: 87 elements
    movl    $79,-1825869664(%ebp)   #   dimension 3: 79 elements
    movl    $17,-1825869660(%ebp)   #   dimension 4: 17 elements
    movl    $53,-1825869656(%ebp)   #   dimension 5: 53 elements

    # function body
    leal    -1825869676(%ebp), %eax #   0:     &()    t8 <- v7
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   1:     param  3 <- t8
    pushl   %eax                   
    leal    -166260088(%ebp), %eax  #   2:     &()    t9 <- v6
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   3:     param  2 <- t9
    pushl   %eax                   
    movl    $99, %eax               #   4:     param  1 <- 99
    pushl   %eax                   
    leal    -6718192(%ebp), %eax    #   5:     &()    t10 <- v5
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   6:     param  0 <- t10
    pushl   %eax                   
    call    f1                      #   7:     call   t11 <- f1
    addl    $16, %esp              
    movb    %al, -17(%ebp)         
    jmp     l_f2_exit              
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $1825869664, %esp       # remove locals
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
    #    -21(%ebp)   1  [ $t2       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t3       <bool> %ebp-22 ]
    #    -28(%ebp)   4  [ $t4       <ptr(4) to <array 27 of <array 63 of <array 80 of <array 49 of <array 7 of <int>>>>>>> %ebp-28 ]
    #    -29(%ebp)   1  [ $t5       <bool> %ebp-29 ]
    #    -36(%ebp)   4  [ $t6       <int> %ebp-36 ]
    #    -37(%ebp)   1  [ $t7       <char> %ebp-37 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $28, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $7, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    ReadInt                 #   0:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    $26088, %eax            #   1:     mul    t1 <- 26088, t0
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    $84339, %eax            #   2:     if     84339 < t1 goto 1
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_test_1               
    jmp     l_test_2                #   3:     goto   2
l_test_1:
    movl    $1, %eax                #   5:     assign t2 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_test_3                #   6:     goto   3
l_test_2:
    movl    $0, %eax                #   8:     assign t2 <- 0
    movb    %al, -21(%ebp)         
l_test_3:
    movzbl  -21(%ebp), %eax         #  10:     assign v0 <- t2
    movb    %al, v0                
    call    dummyBOOLfunc           #  11:     call   t3 <- dummyBOOLfunc
    movb    %al, -22(%ebp)         
l_test_7_while_cond:
    movl    $98, %eax               #  13:     param  1 <- 98
    pushl   %eax                   
    leal    v1, %eax                #  14:     &()    t4 <- v1
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  15:     param  0 <- t4
    pushl   %eax                   
    call    f0                      #  16:     call   t5 <- f0
    addl    $8, %esp               
    movb    %al, -29(%ebp)         
    movzbl  -29(%ebp), %eax         #  17:     if     t5 = 1 goto 8_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_8_while_body    
    jmp     l_test_6                #  18:     goto   6
l_test_8_while_body:
    jmp     l_test_7_while_cond     #  20:     goto   7_while_cond
l_test_6:
    call    dummyINTfunc            #  22:     call   t6 <- dummyINTfunc
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  23:     assign v2 <- t6
    movl    %eax, v2               
    movl    $98, %eax               #  24:     if     98 < 100 goto 12_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_test_12_if_true      
    jmp     l_test_13_if_false      #  25:     goto   13_if_false
l_test_12_if_true:
    call    dummyCHARfunc           #  27:     call   t7 <- dummyCHARfunc
    movb    %al, -37(%ebp)         
    movzbl  -37(%ebp), %eax         #  28:     assign v3 <- t7
    movb    %al, v3                
    jmp     l_test_11               #  29:     goto   11
l_test_13_if_false:
l_test_11:

l_test_exit:
    # epilogue
    addl    $28, %esp               # remove locals
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
v1:                                 # <array 27 of <array 63 of <array 80 of <array 49 of <array 7 of <int>>>>>>
    .long    5
    .long   27
    .long   63
    .long   80
    .long   49
    .long    7
    .skip 186701760
v2:                                 # <int>
    .skip    4
v3:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
