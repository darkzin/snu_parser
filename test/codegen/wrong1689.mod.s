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
    #    -13(%ebp)   1  [ $t5       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #    -21(%ebp)   1  [ $v2       <bool> %ebp-21 ]

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
l_f0_1_while_cond:
    movl    $97, %eax               #   1:     if     97 > 99 goto 4
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_4                 
    jmp     l_f0_5                  #   2:     goto   5
l_f0_4:
    movl    $1, %eax                #   4:     assign t5 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_6                  #   5:     goto   6
l_f0_5:
    movl    $0, %eax                #   7:     assign t5 <- 0
    movb    %al, -13(%ebp)         
l_f0_6:
    movl    $1, %eax                #   9:     if     1 = t5 goto 2_while_body
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f0_2_while_body      
    jmp     l_f0_0                  #  10:     goto   0
l_f0_2_while_body:
    jmp     l_f0_10_if_false        #  12:     goto   10_if_false
    jmp     l_f0_8                  #  13:     goto   8
l_f0_10_if_false:
l_f0_8:
    jmp     l_f0_1_while_cond       #  16:     goto   1_while_cond
l_f0_0:
l_f0_12_while_cond:
    movl    $87926, %eax            #  19:     mul    t6 <- 87926, 34609
    movl    $34609, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    $677, %eax              #  20:     if     677 = t6 goto 13_while_body
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f0_13_while_body     
    jmp     l_f0_11                 #  21:     goto   11
l_f0_13_while_body:
    jmp     l_f0_17_if_false        #  23:     goto   17_if_false
    jmp     l_f0_15                 #  24:     goto   15
l_f0_17_if_false:
l_f0_15:
l_f0_19_while_cond:
    jmp     l_f0_18                 #  28:     goto   18
    jmp     l_f0_19_while_cond      #  29:     goto   19_while_cond
l_f0_18:
    jmp     l_f0_exit              
    movl    $1, %eax                #  32:     assign v2 <- 1
    movb    %al, -21(%ebp)         
    movl    $32318, %eax            #  33:     assign v1 <- 32318
    movl    %eax, 12(%ebp)         
    jmp     l_f0_exit              
l_f0_26_while_cond:
    jmp     l_f0_26_while_cond      #  36:     goto   26_while_cond
    movl    $97, %eax               #  37:     if     97 >= 98 goto 29_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_29_if_true        
    jmp     l_f0_30_if_false        #  38:     goto   30_if_false
l_f0_29_if_true:
    jmp     l_f0_28                 #  40:     goto   28
l_f0_30_if_false:
l_f0_28:
    jmp     l_f0_12_while_cond      #  43:     goto   12_while_cond
l_f0_11:
    jmp     l_f0_exit              
l_f0_37_while_cond:
    movl    $98, %eax               #  47:     if     98 = 100 goto 38_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    je      l_f0_38_while_body     
    jmp     l_f0_36                 #  48:     goto   36
l_f0_38_while_body:
l_f0_41_while_cond:
    movl    $100, %eax              #  51:     if     100 >= 98 goto 42_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_42_while_body     
    jmp     l_f0_40                 #  52:     goto   40
l_f0_42_while_body:
    jmp     l_f0_41_while_cond      #  54:     goto   41_while_cond
l_f0_40:
    jmp     l_f0_37_while_cond      #  56:     goto   37_while_cond
l_f0_36:
    jmp     l_f0_32                 #  58:     goto   32
l_f0_32:

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
    #    -13(%ebp)   1  [ $t5       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t6       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t7       <char> %ebp-15 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 48 of <array 75 of <array 79 of <array 58 of <array 2 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 23 of <array 57 of <array 100 of <array 95 of <array 87 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]
    #    -16(%ebp)   1  [ $v3       <char> %ebp-16 ]

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
    movzbl  -13(%ebp), %eax         #   1:     assign v3 <- t5
    movb    %al, -16(%ebp)         
    call    dummyCHARfunc           #   2:     call   t6 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   3:     return t6
    jmp     l_f1_exit              
    call    dummyCHARfunc           #   4:     call   t7 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    movzbl  -15(%ebp), %eax         #   5:     return t7
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
    #    -16(%ebp)   4  [ $t5       <ptr(4) to <array 23 of <array 57 of <array 100 of <array 95 of <array 87 of <int>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t6       <ptr(4) to <array 48 of <array 75 of <array 79 of <array 58 of <array 2 of <bool>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t7       <char> %ebp-21 ]
    #    -22(%ebp)   1  [ $t8       <bool> %ebp-22 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 88 of <array 84 of <array 47 of <array 57 of <array 37 of <bool>>>>>>> %ebp+12 ]
    #   -32990448(%ebp)  32990424  [ $v2       <array 48 of <array 75 of <array 79 of <array 58 of <array 2 of <bool>>>>>> %ebp-32990448 ]
    #   -72189176(%ebp)  39198728  [ $v3       <array 23 of <array 57 of <array 100 of <array 95 of <array 87 of <int>>>>>> %ebp-72189176 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $72189164, %esp         # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $18047291, %ecx        
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-32990448(%ebp)      # local array 'v2': 5 dimensions
    movl    $48,-32990444(%ebp)     #   dimension 1: 48 elements
    movl    $75,-32990440(%ebp)     #   dimension 2: 75 elements
    movl    $79,-32990436(%ebp)     #   dimension 3: 79 elements
    movl    $58,-32990432(%ebp)     #   dimension 4: 58 elements
    movl    $2,-32990428(%ebp)      #   dimension 5: 2 elements
    movl    $5,-72189176(%ebp)      # local array 'v3': 5 dimensions
    movl    $23,-72189172(%ebp)     #   dimension 1: 23 elements
    movl    $57,-72189168(%ebp)     #   dimension 2: 57 elements
    movl    $100,-72189164(%ebp)    #   dimension 3: 100 elements
    movl    $95,-72189160(%ebp)     #   dimension 4: 95 elements
    movl    $87,-72189156(%ebp)     #   dimension 5: 87 elements

    # function body
    movl    $0, %eax                #   0:     param  2 <- 0
    pushl   %eax                   
    leal    -72189176(%ebp), %eax   #   1:     &()    t5 <- v3
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     param  1 <- t5
    pushl   %eax                   
    leal    -32990448(%ebp), %eax   #   3:     &()    t6 <- v2
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   4:     param  0 <- t6
    pushl   %eax                   
    call    f1                      #   5:     call   t7 <- f1
    addl    $12, %esp              
    movb    %al, -21(%ebp)         
    movl    $0, %eax                #   6:     if     0 = 0 goto 2_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_2_if_true         
    jmp     l_f2_3_if_false         #   7:     goto   3_if_false
l_f2_2_if_true:
    jmp     l_f2_7                  #   9:     goto   7
    jmp     l_f2_7                  #  10:     goto   7
    movl    $1, %eax                #  11:     assign t8 <- 1
    movb    %al, -22(%ebp)         
    jmp     l_f2_8                  #  12:     goto   8
l_f2_7:
    movl    $0, %eax                #  14:     assign t8 <- 0
    movb    %al, -22(%ebp)         
l_f2_8:
    movzbl  -22(%ebp), %eax         #  16:     return t8
    jmp     l_f2_exit              
    jmp     l_f2_1                  #  17:     goto   1
l_f2_3_if_false:
l_f2_1:
    movl    $52270, %eax            #  20:     if     52270 >= 15417 goto 12_if_true
    movl    $15417, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_12_if_true        
    jmp     l_f2_13_if_false        #  21:     goto   13_if_false
l_f2_12_if_true:
    jmp     l_f2_11                 #  23:     goto   11
l_f2_13_if_false:
l_f2_11:

l_f2_exit:
    # epilogue
    addl    $72189164, %esp         # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 23 of <array 57 of <array 100 of <array 95 of <array 87 of <int>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <ptr(4) to <array 48 of <array 75 of <array 79 of <array 58 of <array 2 of <bool>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t3       <char> %ebp-25 ]
    #    -26(%ebp)   1  [ $t4       <char> %ebp-26 ]

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
l_test_1_while_cond:
    call    ReadInt                 #   1:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    $83640, %eax            #   2:     if     83640 = t0 goto 2_while_body
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_test_2_while_body    
    jmp     l_test_0                #   3:     goto   0
l_test_2_while_body:
    jmp     l_test_1_while_cond     #   5:     goto   1_while_cond
l_test_0:
    movl    $0, %eax                #   7:     param  2 <- 0
    pushl   %eax                   
    leal    v1, %eax                #   8:     &()    t1 <- v1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   9:     param  1 <- t1
    pushl   %eax                   
    leal    v0, %eax                #  10:     &()    t2 <- v0
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  11:     param  0 <- t2
    pushl   %eax                   
    call    f1                      #  12:     call   t3 <- f1
    addl    $12, %esp              
    movb    %al, -25(%ebp)         
l_test_6_while_cond:
    call    dummyCHARfunc           #  14:     call   t4 <- dummyCHARfunc
    movb    %al, -26(%ebp)         
    movl    $100, %eax              #  15:     if     100 >= t4 goto 7_while_body
    movzbl  -26(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_test_7_while_body    
    jmp     l_test_5                #  16:     goto   5
l_test_7_while_body:
    jmp     l_test_exit            
    jmp     l_test_6_while_cond     #  19:     goto   6_while_cond
l_test_5:

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
v0:                                 # <array 48 of <array 75 of <array 79 of <array 58 of <array 2 of <bool>>>>>>
    .long    5
    .long   48
    .long   75
    .long   79
    .long   58
    .long    2
    .skip 32990400
v1:                                 # <array 23 of <array 57 of <array 100 of <array 95 of <array 87 of <int>>>>>>
    .long    5
    .long   23
    .long   57
    .long  100
    .long   95
    .long   87
    .skip 39198704








    # end of global data section
    #-----------------------------------------

    .end
##################################################
