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
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t8       <char> %ebp-25 ]
    #    -32(%ebp)   4  [ $t9       <int> %ebp-32 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 4 of <array 4 of <array 5 of <array 7 of <array 7 of <char>>>>>>> %ebp+8 ]
    #    -33(%ebp)   1  [ $v2       <char> %ebp-33 ]
    #    -40(%ebp)   4  [ $v3       <int> %ebp-40 ]

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
    call    dummyCHARfunc           #   0:     call   t8 <- dummyCHARfunc
    movb    %al, -25(%ebp)         
    movzbl  -25(%ebp), %eax         #   1:     assign v2 <- t8
    movb    %al, -33(%ebp)         
    call    dummyINTfunc            #   2:     call   t9 <- dummyINTfunc
    movl    %eax, -32(%ebp)        
    movl    $45092, %eax            #   3:     add    t10 <- 45092, t9
    movl    -32(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   4:     assign v3 <- t10
    movl    %eax, -40(%ebp)        
    call    ReadInt                 #   5:     call   t11 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   6:     div    t12 <- t11, 38068
    movl    $38068, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   7:     return t12
    jmp     l_f0_exit              

l_f0_exit:
    # epilogue
    addl    $28, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t8       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t9       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $v1       <bool> %ebp-15 ]

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
    call    dummyCHARfunc           #   0:     call   t8 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    call    dummyBOOLfunc           #   1:     call   t9 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
l_f1_3_while_cond:
    jmp     l_f1_2                  #   3:     goto   2
    movl    $0, %eax                #   4:     assign v1 <- 0
    movb    %al, -15(%ebp)         
    jmp     l_f1_3_while_cond       #   5:     goto   3_while_cond
l_f1_2:

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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t8       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t9       <bool> %ebp-21 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]

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
    movl    $22298, %eax            #   0:     sub    t8 <- 22298, 12474
    movl    $12474, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   1:     return t8
    jmp     l_f2_exit              
    call    dummyBOOLfunc           #   2:     call   t9 <- dummyBOOLfunc
    movb    %al, -21(%ebp)         
    call    ReadInt                 #   3:     call   t10 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   4:     param  0 <- t10
    pushl   %eax                   
    call    WriteInt                #   5:     call   WriteInt
    addl    $4, %esp               

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
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 4 of <array 4 of <array 5 of <array 7 of <array 7 of <char>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t3       <bool> %ebp-25 ]
    #    -26(%ebp)   1  [ $t4       <bool> %ebp-26 ]
    #    -27(%ebp)   1  [ $t5       <bool> %ebp-27 ]
    #    -28(%ebp)   1  [ $t6       <bool> %ebp-28 ]
    #    -32(%ebp)   4  [ $t7       <int> %ebp-32 ]

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
l_test_1_while_cond:
    movl    $97, %eax               #   1:     if     97 > 98 goto 2_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_2_while_body    
    jmp     l_test_0                #   2:     goto   0
l_test_2_while_body:
    movl    $70016, %eax            #   4:     assign v0 <- 70016
    movl    %eax, v0               
    jmp     l_test_1_while_cond     #   5:     goto   1_while_cond
l_test_0:
l_test_6_while_cond:
    jmp     l_test_5                #   8:     goto   5
    jmp     l_test_5                #   9:     goto   5
    jmp     l_test_6_while_cond     #  10:     goto   6_while_cond
l_test_5:
    leal    v2, %eax                #  12:     &()    t0 <- v2
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  13:     param  0 <- t0
    pushl   %eax                   
    call    f0                      #  14:     call   t1 <- f0
    addl    $4, %esp               
    movl    %eax, -20(%ebp)        
    movl    $43304, %eax            #  15:     add    t2 <- 43304, 84829
    movl    $84829, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  16:     if     t1 < t2 goto 11
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_test_11              
    jmp     l_test_12               #  17:     goto   12
l_test_11:
    movl    $1, %eax                #  19:     assign t3 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_test_13               #  20:     goto   13
l_test_12:
    movl    $0, %eax                #  22:     assign t3 <- 0
    movb    %al, -25(%ebp)         
l_test_13:
    movzbl  -25(%ebp), %eax         #  24:     assign v1 <- t3
    movb    %al, v1                
    jmp     l_test_17_if_false      #  25:     goto   17_if_false
    jmp     l_test_exit            
    call    dummyBOOLfunc           #  27:     call   t4 <- dummyBOOLfunc
    movb    %al, -26(%ebp)         
    movzbl  -26(%ebp), %eax         #  28:     if     t4 = 1 goto 20_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_20_if_true      
    jmp     l_test_21_if_false      #  29:     goto   21_if_false
l_test_20_if_true:
    jmp     l_test_19               #  31:     goto   19
l_test_21_if_false:
l_test_19:
    jmp     l_test_15               #  34:     goto   15
l_test_17_if_false:
l_test_15:
l_test_23_while_cond:
    movl    $25801, %eax            #  38:     if     25801 < 914 goto 24_while_body
    movl    $914, %ebx             
    cmpl    %ebx, %eax             
    jl      l_test_24_while_body   
    jmp     l_test_22               #  39:     goto   22
l_test_24_while_body:
    movl    $92465, %eax            #  41:     if     92465 < 5722 goto 27_if_true
    movl    $5722, %ebx            
    cmpl    %ebx, %eax             
    jl      l_test_27_if_true      
    jmp     l_test_28_if_false      #  42:     goto   28_if_false
l_test_27_if_true:
    jmp     l_test_35               #  44:     goto   35
l_test_35:
    movl    $1, %eax                #  46:     assign t5 <- 1
    movb    %al, -27(%ebp)         
    jmp     l_test_37               #  47:     goto   37
    movl    $0, %eax                #  48:     assign t5 <- 0
    movb    %al, -27(%ebp)         
l_test_37:
    movl    $1, %eax                #  50:     if     1 # t5 goto 31
    movzbl  -27(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_test_31              
    jmp     l_test_32               #  51:     goto   32
l_test_31:
    movl    $1, %eax                #  53:     assign t6 <- 1
    movb    %al, -28(%ebp)         
    jmp     l_test_33               #  54:     goto   33
l_test_32:
    movl    $0, %eax                #  56:     assign t6 <- 0
    movb    %al, -28(%ebp)         
l_test_33:
    movzbl  -28(%ebp), %eax         #  58:     param  0 <- t6
    pushl   %eax                   
    call    f2                      #  59:     call   t7 <- f2
    addl    $4, %esp               
    movl    %eax, -32(%ebp)        
    jmp     l_test_26               #  60:     goto   26
l_test_28_if_false:
l_test_26:
    jmp     l_test_23_while_cond    #  63:     goto   23_while_cond
l_test_22:

l_test_exit:
    # epilogue
    addl    $20, %esp               # remove locals
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
v1:                                 # <bool>
    .skip    1
    .align   4
v2:                                 # <array 4 of <array 4 of <array 5 of <array 7 of <array 7 of <char>>>>>>
    .long    5
    .long    4
    .long    4
    .long    5
    .long    7
    .long    7
    .skip 3920








    # end of global data section
    #-----------------------------------------

    .end
##################################################
