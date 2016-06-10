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
    #    -14(%ebp)   1  [ $t6       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t7       <char> %ebp-15 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <bool> %ebp+16 ]

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
    call    dummyCHARfunc           #   0:     call   t5 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    jmp     l_f0_0                  #   1:     goto   0
l_f0_0:
    call    dummyCHARfunc           #   3:     call   t6 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   4:     return t6
    jmp     l_f0_exit              
    call    dummyCHARfunc           #   5:     call   t7 <- dummyCHARfunc
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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t5       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t6       <bool> %ebp-18 ]
    #    -19(%ebp)   1  [ $t7       <char> %ebp-19 ]
    #    -20(%ebp)   1  [ $t8       <bool> %ebp-20 ]
    #    -24(%ebp)   4  [ $t9       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $v1       <int> %ebp-28 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $16, %esp               # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 12(%esp)         
    movl    %eax, 8(%esp)          
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
l_f1_1_while_cond:
    jmp     l_f1_0                  #   1:     goto   0
l_f1_4_while_cond:
    jmp     l_f1_3                  #   3:     goto   3
    jmp     l_f1_4_while_cond       #   4:     goto   4_while_cond
l_f1_3:
    jmp     l_f1_1_while_cond       #   6:     goto   1_while_cond
l_f1_0:
    jmp     l_f1_12                 #   8:     goto   12
    movl    $1, %eax                #   9:     assign t5 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f1_13                 #  10:     goto   13
l_f1_12:
    movl    $0, %eax                #  12:     assign t5 <- 0
    movb    %al, -17(%ebp)         
l_f1_13:
    movzbl  -17(%ebp), %eax         #  14:     param  2 <- t5
    pushl   %eax                   
    movl    $1, %eax                #  15:     if     1 = 0 goto 15
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_15                
    jmp     l_f1_16                 #  16:     goto   16
l_f1_15:
    movl    $1, %eax                #  18:     assign t6 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_f1_17                 #  19:     goto   17
l_f1_16:
    movl    $0, %eax                #  21:     assign t6 <- 0
    movb    %al, -18(%ebp)         
l_f1_17:
    movzbl  -18(%ebp), %eax         #  23:     param  1 <- t6
    pushl   %eax                   
    movl    $97, %eax               #  24:     param  0 <- 97
    pushl   %eax                   
    call    f0                      #  25:     call   t7 <- f0
    addl    $12, %esp              
    movb    %al, -19(%ebp)         
    movl    $99, %eax               #  26:     if     99 < t7 goto 7
    movzbl  -19(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f1_7                 
    jmp     l_f1_8                  #  27:     goto   8
l_f1_7:
    movl    $1, %eax                #  29:     assign t8 <- 1
    movb    %al, -20(%ebp)         
    jmp     l_f1_9                  #  30:     goto   9
l_f1_8:
    movl    $0, %eax                #  32:     assign t8 <- 0
    movb    %al, -20(%ebp)         
l_f1_9:
    movzbl  -20(%ebp), %eax         #  34:     return t8
    jmp     l_f1_exit              
    movl    $37922, %eax            #  35:     div    t9 <- 37922, 2226
    movl    $2226, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  36:     div    t10 <- t9, 97377
    movl    $97377, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  37:     assign v1 <- t10
    movl    %eax, -28(%ebp)        

l_f1_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t5       <char> %ebp-13 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 6 of <array 5 of <array 7 of <array 9 of <array 5 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 8 of <array 2 of <array 5 of <array 5 of <array 6 of <bool>>>>>>> %ebp+16 ]

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
    jmp     l_f2_1_if_true          #   0:     goto   1_if_true
    jmp     l_f2_2_if_false         #   1:     goto   2_if_false
l_f2_1_if_true:
    jmp     l_f2_0                  #   3:     goto   0
l_f2_2_if_false:
l_f2_0:
    jmp     l_f2_exit              
l_f2_7_while_cond:
    call    dummyCHARfunc           #   8:     call   t5 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   9:     if     t5 >= 97 goto 8_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_8_while_body      
    jmp     l_f2_6                  #  10:     goto   6
l_f2_8_while_body:
    jmp     l_f2_7_while_cond       #  12:     goto   7_while_cond
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
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <char> %ebp-14 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t4       <int> %ebp-28 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $16, %esp               # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 12(%esp)         
    movl    %eax, 8(%esp)          
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
    movl    $97, %eax               #   0:     assign v0 <- 97
    movb    %al, v0                
    movl    $0, %eax                #   1:     assign v1 <- 0
    movb    %al, v1                
l_test_6_while_cond:
    movl    $97, %eax               #   3:     if     97 # 100 goto 7_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jne     l_test_7_while_body    
    jmp     l_test_5                #   4:     goto   5
l_test_7_while_body:
    movl    $0, %eax                #   6:     param  2 <- 0
    pushl   %eax                   
    movl    $77055, %eax            #   7:     if     77055 > 87245 goto 10
    movl    $87245, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_10              
    jmp     l_test_11               #   8:     goto   11
l_test_10:
    movl    $1, %eax                #  10:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_12               #  11:     goto   12
l_test_11:
    movl    $0, %eax                #  13:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_12:
    movzbl  -13(%ebp), %eax         #  15:     param  1 <- t0
    pushl   %eax                   
    movl    $100, %eax              #  16:     param  0 <- 100
    pushl   %eax                   
    call    f0                      #  17:     call   t1 <- f0
    addl    $12, %esp              
    movb    %al, -14(%ebp)         
l_test_15_while_cond:
    jmp     l_test_14               #  19:     goto   14
    jmp     l_test_15_while_cond    #  20:     goto   15_while_cond
l_test_14:
    jmp     l_test_6_while_cond     #  22:     goto   6_while_cond
l_test_5:
    jmp     l_test_1                #  24:     goto   1
l_test_1:
    movl    $50150, %eax            #  26:     mul    t2 <- 50150, 40563
    movl    $40563, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  27:     div    t3 <- t2, 61942
    movl    $61942, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  28:     mul    t4 <- t3, 61825
    movl    $61825, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  29:     assign v2 <- t4
    movl    %eax, v2               
l_test_19_while_cond:
    movl    $100, %eax              #  31:     if     100 > 97 goto 20_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_20_while_body   
    jmp     l_test_18               #  32:     goto   18
l_test_20_while_body:
    movl    $0, %eax                #  34:     assign v1 <- 0
    movb    %al, v1                
    jmp     l_test_22               #  35:     goto   22
l_test_22:
    jmp     l_test_19_while_cond    #  37:     goto   19_while_cond
l_test_18:

l_test_exit:
    # epilogue
    addl    $16, %esp               # remove locals
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
    .align   4
v2:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
