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
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t5       <bool> %ebp-25 ]
    #    -26(%ebp)   1  [ $t6       <bool> %ebp-26 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 78 of <array 15 of <array 20 of <array 24 of <array 94 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <char> %ebp+16 ]
    #    -32(%ebp)   4  [ $v4       <int> %ebp-32 ]

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
    call    dummyCHARfunc           #   0:     call   t2 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    call    ReadInt                 #   1:     call   t3 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     sub    t4 <- t3, 49529
    movl    $49529, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     assign v4 <- t4
    movl    %eax, -32(%ebp)        
    jmp     l_f0_3_if_true          #   4:     goto   3_if_true
    jmp     l_f0_4_if_false         #   5:     goto   4_if_false
l_f0_3_if_true:
    movl    $98, %eax               #   7:     assign v3 <- 98
    movb    %al, 16(%ebp)          
    movl    $98, %eax               #   8:     if     98 = 99 goto 8
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    je      l_f0_8                 
    jmp     l_f0_9                  #   9:     goto   9
l_f0_8:
    movl    $1, %eax                #  11:     assign t5 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_f0_10                 #  12:     goto   10
l_f0_9:
    movl    $0, %eax                #  14:     assign t5 <- 0
    movb    %al, -25(%ebp)         
l_f0_10:
    movzbl  -25(%ebp), %eax         #  16:     return t5
    jmp     l_f0_exit              
    movl    $99, %eax               #  17:     if     99 >= 99 goto 13
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_13                
    jmp     l_f0_14                 #  18:     goto   14
l_f0_13:
    movl    $1, %eax                #  20:     assign t6 <- 1
    movb    %al, -26(%ebp)         
    jmp     l_f0_15                 #  21:     goto   15
l_f0_14:
    movl    $0, %eax                #  23:     assign t6 <- 0
    movb    %al, -26(%ebp)         
l_f0_15:
    movzbl  -26(%ebp), %eax         #  25:     return t6
    jmp     l_f0_exit              
l_f0_18_while_cond:
    movl    $35705, %eax            #  27:     if     35705 >= 88866 goto 19_while_body
    movl    $88866, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_19_while_body     
    jmp     l_f0_17                 #  28:     goto   17
l_f0_19_while_body:
    jmp     l_f0_18_while_cond      #  30:     goto   18_while_cond
l_f0_17:
    jmp     l_f0_2                  #  32:     goto   2
l_f0_4_if_false:
l_f0_2:

l_f0_exit:
    # epilogue
    addl    $20, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <int> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 44 of <array 91 of <array 19 of <array 4 of <array 5 of <int>>>>>>> %ebp+20 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body
    jmp     l_f1_exit              
    jmp     l_f1_exit              
l_f1_3_while_cond:
    movl    $32609, %eax            #   3:     if     32609 < 42892 goto 4_while_body
    movl    $42892, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_4_while_body      
    jmp     l_f1_2                  #   4:     goto   2
l_f1_4_while_body:
    jmp     l_f1_exit              
    jmp     l_f1_3_while_cond       #   7:     goto   3_while_cond
l_f1_2:

l_f1_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t2       <ptr(4) to <array 78 of <array 15 of <array 20 of <array 24 of <array 94 of <bool>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t3       <ptr(4) to <array 78 of <array 15 of <array 20 of <array 24 of <array 94 of <bool>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t4       <char> %ebp-21 ]
    #    -22(%ebp)   1  [ $t5       <bool> %ebp-22 ]
    #    -23(%ebp)   1  [ $t6       <bool> %ebp-23 ]
    #    -24(%ebp)   1  [ $t7       <bool> %ebp-24 ]
    #    -25(%ebp)   1  [ $t8       <bool> %ebp-25 ]
    #    -26(%ebp)   1  [ $t9       <char> %ebp-26 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 75 of <array 86 of <array 94 of <array 52 of <array 22 of <char>>>>>>> %ebp+8 ]
    #   -52790452(%ebp)  52790424  [ $v2       <array 78 of <array 15 of <array 20 of <array 24 of <array 94 of <bool>>>>>> %ebp-52790452 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $52790440, %esp         # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $13197610, %ecx        
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-52790452(%ebp)      # local array 'v2': 5 dimensions
    movl    $78,-52790448(%ebp)     #   dimension 1: 78 elements
    movl    $15,-52790444(%ebp)     #   dimension 2: 15 elements
    movl    $20,-52790440(%ebp)     #   dimension 3: 20 elements
    movl    $24,-52790436(%ebp)     #   dimension 4: 24 elements
    movl    $94,-52790432(%ebp)     #   dimension 5: 94 elements

    # function body
l_f2_1_while_cond:
    jmp     l_f2_0                  #   1:     goto   0
    jmp     l_f2_0                  #   2:     goto   0
    jmp     l_f2_6_if_false         #   3:     goto   6_if_false
    jmp     l_f2_4                  #   4:     goto   4
l_f2_6_if_false:
l_f2_4:
    jmp     l_f2_1_while_cond       #   7:     goto   1_while_cond
l_f2_0:
    movl    $99, %eax               #   9:     param  2 <- 99
    pushl   %eax                   
    leal    -52790452(%ebp), %eax   #  10:     &()    t2 <- v2
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  11:     param  1 <- t2
    pushl   %eax                   
    jmp     l_f2_14                 #  12:     goto   14
    jmp     l_f2_14                 #  13:     goto   14
    jmp     l_f2_14                 #  14:     goto   14
    movl    $99, %eax               #  15:     param  2 <- 99
    pushl   %eax                   
    leal    -52790452(%ebp), %eax   #  16:     &()    t3 <- v2
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  17:     param  1 <- t3
    pushl   %eax                   
    call    dummyCHARfunc           #  18:     call   t4 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #  19:     if     t4 <= 97 goto 18
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_18                
    jmp     l_f2_19                 #  20:     goto   19
l_f2_18:
    movl    $1, %eax                #  22:     assign t5 <- 1
    movb    %al, -22(%ebp)         
    jmp     l_f2_20                 #  23:     goto   20
l_f2_19:
    movl    $0, %eax                #  25:     assign t5 <- 0
    movb    %al, -22(%ebp)         
l_f2_20:
    movzbl  -22(%ebp), %eax         #  27:     param  0 <- t5
    pushl   %eax                   
    call    f0                      #  28:     call   t6 <- f0
    addl    $12, %esp              
    movb    %al, -23(%ebp)         
    movzbl  -23(%ebp), %eax         #  29:     if     t6 = 1 goto 8
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_8                 
l_f2_14:
    jmp     l_f2_8                  #  31:     goto   8
    jmp     l_f2_8                  #  32:     goto   8
    jmp     l_f2_8                  #  33:     goto   8
l_f2_8:
    movl    $1, %eax                #  35:     assign t7 <- 1
    movb    %al, -24(%ebp)         
    jmp     l_f2_10                 #  36:     goto   10
    movl    $0, %eax                #  37:     assign t7 <- 0
    movb    %al, -24(%ebp)         
l_f2_10:
    movzbl  -24(%ebp), %eax         #  39:     param  0 <- t7
    pushl   %eax                   
    call    f0                      #  40:     call   t8 <- f0
    addl    $12, %esp              
    movb    %al, -25(%ebp)         
    call    dummyCHARfunc           #  41:     call   t9 <- dummyCHARfunc
    movb    %al, -26(%ebp)         

l_f2_exit:
    # epilogue
    addl    $52790440, %esp         # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <char> %ebp-14 ]

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
    call    dummyCHARfunc           #   0:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    call    dummyCHARfunc           #   1:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movl    $97, %eax               #   2:     assign v0 <- 97
    movb    %al, v0                
l_test_4_while_cond:
    jmp     l_test_7                #   4:     goto   7
l_test_7:
    movl    $96225, %eax            #   6:     if     96225 <= 95713 goto 11_if_true
    movl    $95713, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_11_if_true      
    jmp     l_test_12_if_false      #   7:     goto   12_if_false
l_test_11_if_true:
    jmp     l_test_10               #   9:     goto   10
l_test_12_if_false:
l_test_10:
l_test_15_while_cond:
    movl    $99, %eax               #  13:     if     99 <= 100 goto 16_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_test_16_while_body   
    jmp     l_test_14               #  14:     goto   14
l_test_16_while_body:
    jmp     l_test_15_while_cond    #  16:     goto   15_while_cond
l_test_14:
    jmp     l_test_4_while_cond     #  18:     goto   4_while_cond
    call    WriteLn                 #  19:     call   WriteLn
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
v0:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
