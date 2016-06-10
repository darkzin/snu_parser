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
    #    -13(%ebp)   1  [ $t2       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t4       <bool> %ebp-21 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <char> %ebp+20 ]
    #    -28(%ebp)   4  [ $v4       <int> %ebp-28 ]

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
    jmp     l_f0_2                  #   0:     goto   2
    movl    $1, %eax                #   1:     assign t2 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_3                  #   2:     goto   3
l_f0_2:
    movl    $0, %eax                #   4:     assign t2 <- 0
    movb    %al, -13(%ebp)         
l_f0_3:
    movzbl  -13(%ebp), %eax         #   6:     return t2
    jmp     l_f0_exit              
l_f0_6_while_cond:
    jmp     l_f0_5                  #   8:     goto   5
    movl    $16925, %eax            #   9:     assign v4 <- 16925
    movl    %eax, -28(%ebp)        
l_f0_10_while_cond:
    jmp     l_f0_10_while_cond      #  11:     goto   10_while_cond
    call    WriteLn                 #  12:     call   WriteLn
l_f0_14_while_cond:
    movl    $98, %eax               #  14:     if     98 <= 98 goto 15_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f0_15_while_body     
    jmp     l_f0_13                 #  15:     goto   13
l_f0_15_while_body:
    jmp     l_f0_14_while_cond      #  17:     goto   14_while_cond
l_f0_13:
    jmp     l_f0_6_while_cond       #  19:     goto   6_while_cond
l_f0_5:
l_f0_18_while_cond:
    movl    $19431, %eax            #  22:     assign v4 <- 19431
    movl    %eax, -28(%ebp)        
    movl    $67053, %eax            #  23:     mul    t3 <- 67053, 20962
    movl    $20962, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    $97640, %eax            #  24:     if     97640 = t3 goto 22
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f0_22                
    jmp     l_f0_23                 #  25:     goto   23
l_f0_22:
    movl    $1, %eax                #  27:     assign t4 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f0_24                 #  28:     goto   24
l_f0_23:
    movl    $0, %eax                #  30:     assign t4 <- 0
    movb    %al, -21(%ebp)         
l_f0_24:
    movzbl  -21(%ebp), %eax         #  32:     return t4
    jmp     l_f0_exit              
    jmp     l_f0_18_while_cond      #  33:     goto   18_while_cond

l_f0_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t2       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t3       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t4       <char> %ebp-15 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 20 of <array 66 of <array 23 of <array 43 of <array 55 of <int>>>>>>> %ebp+12 ]
    #    -16(%ebp)   1  [ $v2       <char> %ebp-16 ]

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
    call    dummyCHARfunc           #   0:     call   t2 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     assign v2 <- t2
    movb    %al, -16(%ebp)         
    call    dummyCHARfunc           #   2:     call   t3 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   3:     return t3
    jmp     l_f1_exit              
    call    dummyCHARfunc           #   4:     call   t4 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    movzbl  -15(%ebp), %eax         #   5:     assign v2 <- t4
    movb    %al, -16(%ebp)         

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
    #    -16(%ebp)   4  [ $t2       <ptr(4) to <array 20 of <array 66 of <array 23 of <array 43 of <array 55 of <int>>>>>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t3       <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $t4       <bool> %ebp-18 ]
    #    -19(%ebp)   1  [ $t5       <bool> %ebp-19 ]
    #    -20(%ebp)   1  [ $t6       <bool> %ebp-20 ]
    #    -24(%ebp)   4  [ $t7       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t8       <int> %ebp-28 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 85 of <array 97 of <array 8 of <array 68 of <array 93 of <char>>>>>>> %ebp+8 ]
    #   -287205652(%ebp)  287205624  [ $v1       <array 20 of <array 66 of <array 23 of <array 43 of <array 55 of <int>>>>>> %ebp-287205652 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $287205640, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $71801410, %ecx        
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-287205652(%ebp)     # local array 'v1': 5 dimensions
    movl    $20,-287205648(%ebp)    #   dimension 1: 20 elements
    movl    $66,-287205644(%ebp)    #   dimension 2: 66 elements
    movl    $23,-287205640(%ebp)    #   dimension 3: 23 elements
    movl    $43,-287205636(%ebp)    #   dimension 4: 43 elements
    movl    $55,-287205632(%ebp)    #   dimension 5: 55 elements

    # function body
l_f2_1_while_cond:
    leal    -287205652(%ebp), %eax  #   1:     &()    t2 <- v1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     param  1 <- t2
    pushl   %eax                   
    movl    $87023, %eax            #   3:     param  0 <- 87023
    pushl   %eax                   
    call    f1                      #   4:     call   t3 <- f1
    addl    $8, %esp               
    movb    %al, -17(%ebp)         
    movl    $99, %eax               #   5:     if     99 # t3 goto 2_while_body
    movzbl  -17(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f2_2_while_body      
    jmp     l_f2_0                  #   6:     goto   0
l_f2_2_while_body:
    jmp     l_f2_1_while_cond       #   8:     goto   1_while_cond
l_f2_0:
    movl    $100, %eax              #  10:     param  3 <- 100
    pushl   %eax                   
    movl    $97, %eax               #  11:     if     97 < 97 goto 9
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f2_9                 
    jmp     l_f2_6                  #  12:     goto   6
l_f2_9:
    jmp     l_f2_6                  #  14:     goto   6
    movl    $1, %eax                #  15:     assign t4 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_f2_7                  #  16:     goto   7
l_f2_6:
    movl    $0, %eax                #  18:     assign t4 <- 0
    movb    %al, -18(%ebp)         
l_f2_7:
    movzbl  -18(%ebp), %eax         #  20:     param  2 <- t4
    pushl   %eax                   
    movl    $37234, %eax            #  21:     if     37234 # 86506 goto 11
    movl    $86506, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f2_11                
    jmp     l_f2_12                 #  22:     goto   12
l_f2_11:
    movl    $1, %eax                #  24:     assign t5 <- 1
    movb    %al, -19(%ebp)         
    jmp     l_f2_13                 #  25:     goto   13
l_f2_12:
    movl    $0, %eax                #  27:     assign t5 <- 0
    movb    %al, -19(%ebp)         
l_f2_13:
    movzbl  -19(%ebp), %eax         #  29:     param  1 <- t5
    pushl   %eax                   
    movl    $97, %eax               #  30:     param  0 <- 97
    pushl   %eax                   
    call    f0                      #  31:     call   t6 <- f0
    addl    $16, %esp              
    movb    %al, -20(%ebp)         
    movl    $99949, %eax            #  32:     mul    t7 <- 99949, 46727
    movl    $46727, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  33:     sub    t8 <- t7, 27412
    movl    $27412, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  34:     return t8
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $287205640, %esp        # remove locals
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
l_test_1_while_cond:
    call    dummyBOOLfunc           #   1:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     if     t0 = 1 goto 5
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_5               
    jmp     l_test_0                #   3:     goto   0
l_test_5:
    jmp     l_test_0                #   5:     goto   0
    jmp     l_test_1_while_cond     #   6:     goto   1_while_cond
l_test_0:
    jmp     l_test_exit            
    call    dummyBOOLfunc           #   9:     call   t1 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    movl    $376, %eax              #  10:     assign v0 <- 376
    movl    %eax, v0               
l_test_10_while_cond:
    jmp     l_test_9                #  12:     goto   9
    jmp     l_test_17_if_false      #  13:     goto   17_if_false
    jmp     l_test_15               #  14:     goto   15
l_test_17_if_false:
l_test_15:
l_test_19_while_cond:
    movl    $54586, %eax            #  18:     if     54586 < 50814 goto 20_while_body
    movl    $50814, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_20_while_body   
    jmp     l_test_18               #  19:     goto   18
l_test_20_while_body:
    jmp     l_test_19_while_cond    #  21:     goto   19_while_cond
l_test_18:
    jmp     l_test_10_while_cond    #  23:     goto   10_while_cond
l_test_9:

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
v0:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
