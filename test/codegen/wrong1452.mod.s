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
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 40 of <array 32 of <array 38 of <array 36 of <array 70 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <bool> %ebp+20 ]
    #    -15(%ebp)   1  [ $v4       <char> %ebp-15 ]

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
    movzbl  -13(%ebp), %eax         #   1:     return t2
    jmp     l_f0_exit              
    call    dummyProcedure          #   2:     call   dummyProcedure
    jmp     l_f0_4_if_false         #   3:     goto   4_if_false
    movl    $98, %eax               #   4:     assign v4 <- 98
    movb    %al, -15(%ebp)         
l_f0_7_while_cond:
    jmp     l_f0_6                  #   6:     goto   6
    jmp     l_f0_7_while_cond       #   7:     goto   7_while_cond
l_f0_6:
    call    dummyBOOLfunc           #   9:     call   t3 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    jmp     l_f0_2                  #  10:     goto   2
l_f0_4_if_false:
l_f0_2:

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
    #    -13(%ebp)   1  [ $t2       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t3       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t4       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $t5       <bool> %ebp-16 ]
    #    -17(%ebp)   1  [ $t6       <bool> %ebp-17 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 8 of <array 28 of <array 44 of <array 38 of <array 31 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 34 of <array 17 of <array 79 of <array 68 of <array 56 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <bool> %ebp+20 ]

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
    call    dummyBOOLfunc           #   0:     call   t2 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     if     t2 = 1 goto 1
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_1                 
    jmp     l_f1_1                  #   2:     goto   1
    jmp     l_f1_2                  #   3:     goto   2
l_f1_1:
    movl    $1, %eax                #   5:     assign t3 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_3                  #   6:     goto   3
l_f1_2:
    movl    $0, %eax                #   8:     assign t3 <- 0
    movb    %al, -14(%ebp)         
l_f1_3:
    movzbl  -14(%ebp), %eax         #  10:     return t3
    jmp     l_f1_exit              
l_f1_7_while_cond:
l_f1_10_while_cond:
    movl    $97, %eax               #  13:     if     97 >= 100 goto 11_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_f1_11_while_body     
    jmp     l_f1_9                  #  14:     goto   9
l_f1_11_while_body:
    movl    $1, %eax                #  16:     if     1 = 0 goto 14
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_14                
    jmp     l_f1_15                 #  17:     goto   15
l_f1_14:
    movl    $1, %eax                #  19:     assign t4 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f1_16                 #  20:     goto   16
l_f1_15:
    movl    $0, %eax                #  22:     assign t4 <- 0
    movb    %al, -15(%ebp)         
l_f1_16:
    movzbl  -15(%ebp), %eax         #  24:     return t4
    jmp     l_f1_exit              
    movl    $97, %eax               #  25:     if     97 > 99 goto 19
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f1_19                
    jmp     l_f1_20                 #  26:     goto   20
l_f1_19:
    movl    $1, %eax                #  28:     assign t5 <- 1
    movb    %al, -16(%ebp)         
    jmp     l_f1_21                 #  29:     goto   21
l_f1_20:
    movl    $0, %eax                #  31:     assign t5 <- 0
    movb    %al, -16(%ebp)         
l_f1_21:
    movzbl  -16(%ebp), %eax         #  33:     return t5
    jmp     l_f1_exit              
    jmp     l_f1_10_while_cond      #  34:     goto   10_while_cond
l_f1_9:
    jmp     l_f1_7_while_cond       #  36:     goto   7_while_cond
    movl    $76845, %eax            #  37:     if     76845 = 6860 goto 24
    movl    $6860, %ebx            
    cmpl    %ebx, %eax             
    je      l_f1_24                
    jmp     l_f1_25                 #  38:     goto   25
l_f1_24:
    movl    $1, %eax                #  40:     assign t6 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f1_26                 #  41:     goto   26
l_f1_25:
    movl    $0, %eax                #  43:     assign t6 <- 0
    movb    %al, -17(%ebp)         
l_f1_26:
    movzbl  -17(%ebp), %eax         #  45:     assign v3 <- t6
    movb    %al, 20(%ebp)          

l_f1_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t2       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t3       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t4       <ptr(4) to <array 40 of <array 32 of <array 38 of <array 36 of <array 70 of <bool>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t5       <char> %ebp-21 ]
    #    -22(%ebp)   1  [ $t6       <char> %ebp-22 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #   -122572848(%ebp)  122572824  [ $v2       <array 40 of <array 32 of <array 38 of <array 36 of <array 70 of <bool>>>>>> %ebp-122572848 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $122572836, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $30643209, %ecx        
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-122572848(%ebp)     # local array 'v2': 5 dimensions
    movl    $40,-122572844(%ebp)    #   dimension 1: 40 elements
    movl    $32,-122572840(%ebp)    #   dimension 2: 32 elements
    movl    $38,-122572836(%ebp)    #   dimension 3: 38 elements
    movl    $36,-122572832(%ebp)    #   dimension 4: 36 elements
    movl    $70,-122572828(%ebp)    #   dimension 5: 70 elements

    # function body
l_f2_1_while_cond:
    jmp     l_f2_0                  #   1:     goto   0
    movl    $1, %eax                #   2:     param  3 <- 1
    pushl   %eax                   
    movl    $99, %eax               #   3:     if     99 >= 100 goto 4
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_f2_4                 
    jmp     l_f2_5                  #   4:     goto   5
l_f2_4:
    movl    $1, %eax                #   6:     assign t2 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_6                  #   7:     goto   6
l_f2_5:
    movl    $0, %eax                #   9:     assign t2 <- 0
    movb    %al, -13(%ebp)         
l_f2_6:
    movzbl  -13(%ebp), %eax         #  11:     param  2 <- t2
    pushl   %eax                   
    movl    $97, %eax               #  12:     if     97 = 98 goto 8
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    je      l_f2_8                 
    jmp     l_f2_9                  #  13:     goto   9
l_f2_8:
    movl    $1, %eax                #  15:     assign t3 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_10                 #  16:     goto   10
l_f2_9:
    movl    $0, %eax                #  18:     assign t3 <- 0
    movb    %al, -14(%ebp)         
l_f2_10:
    movzbl  -14(%ebp), %eax         #  20:     param  1 <- t3
    pushl   %eax                   
    leal    -122572848(%ebp), %eax  #  21:     &()    t4 <- v2
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  22:     param  0 <- t4
    pushl   %eax                   
    call    f0                      #  23:     call   t5 <- f0
    addl    $16, %esp              
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #  24:     return t5
    jmp     l_f2_exit              
    jmp     l_f2_1_while_cond       #  25:     goto   1_while_cond
l_f2_0:
    call    dummyCHARfunc           #  27:     call   t6 <- dummyCHARfunc
    movb    %al, -22(%ebp)         
    movzbl  -22(%ebp), %eax         #  28:     return t6
    jmp     l_f2_exit              
l_f2_14_while_cond:
    movl    $98, %eax               #  30:     if     98 <= 100 goto 15_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f2_15_while_body     
    jmp     l_f2_13                 #  31:     goto   13
l_f2_15_while_body:
    movl    $100, %eax              #  33:     return 100
    jmp     l_f2_exit              
l_f2_19_while_cond:
    movl    $93684, %eax            #  35:     if     93684 < 69442 goto 20_while_body
    movl    $69442, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_20_while_body     
    jmp     l_f2_18                 #  36:     goto   18
l_f2_20_while_body:
    jmp     l_f2_19_while_cond      #  38:     goto   19_while_cond
l_f2_18:
    movl    $100, %eax              #  40:     return 100
    jmp     l_f2_exit              
    jmp     l_f2_14_while_cond      #  41:     goto   14_while_cond
l_f2_13:

l_f2_exit:
    # epilogue
    addl    $122572836, %esp        # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <bool> %ebp-17 ]

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
l_test_4_while_cond:
    movl    $77120, %eax            #   1:     add    t0 <- 77120, 7058
    movl    $7058, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     if     t0 <= 82634 goto 5_while_body
    movl    $82634, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_5_while_body    
    jmp     l_test_3                #   3:     goto   3
l_test_5_while_body:
    jmp     l_test_4_while_cond     #   5:     goto   4_while_cond
l_test_3:
    jmp     l_test_0                #   7:     goto   0
l_test_0:
    jmp     l_test_exit            
    call    dummyBOOLfunc           #  10:     call   t1 <- dummyBOOLfunc
    movb    %al, -17(%ebp)         
    call    dummyProcedure          #  11:     call   dummyProcedure
    jmp     l_test_11_if_true       #  12:     goto   11_if_true
l_test_11_if_true:
    movl    $93637, %eax            #  14:     assign v0 <- 93637
    movl    %eax, v0               
    jmp     l_test_10               #  15:     goto   10
l_test_10:
    jmp     l_test_exit            

l_test_exit:
    # epilogue
    addl    $8, %esp                # remove locals
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
