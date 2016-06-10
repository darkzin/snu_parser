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
    #    -13(%ebp)   1  [ $t10      <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t11      <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t7       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t8       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t9       <int> %ebp-32 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 45 of <array 53 of <array 8 of <array 60 of <array 11 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 2 of <array 57 of <array 84 of <array 80 of <array 97 of <bool>>>>>>> %ebp+16 ]
    #    -36(%ebp)   4  [ $v3       <int> %ebp-36 ]

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
    call    ReadInt                 #   0:     call   t6 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   1:     assign v3 <- t6
    movl    %eax, -36(%ebp)        
    movl    $87237, %eax            #   2:     sub    t7 <- 87237, 55477
    movl    $55477, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     sub    t8 <- t7, 29679
    movl    $29679, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   4:     sub    t9 <- t8, 30846
    movl    $30846, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   5:     assign v3 <- t9
    movl    %eax, -36(%ebp)        
    call    dummyCHARfunc           #   6:     call   t10 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $1, %eax                #   7:     if     1 # 0 goto 7
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f0_7                 
    jmp     l_f0_8                  #   8:     goto   8
l_f0_7:
    movl    $1, %eax                #  10:     assign t11 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f0_9                  #  11:     goto   9
l_f0_8:
    movl    $0, %eax                #  13:     assign t11 <- 0
    movb    %al, -14(%ebp)         
l_f0_9:
    movzbl  -14(%ebp), %eax         #  15:     assign v0 <- t11
    movb    %al, 8(%ebp)           
l_f0_12_while_cond:
    jmp     l_f0_11                 #  17:     goto   11
    jmp     l_f0_12_while_cond      #  18:     goto   12_while_cond
l_f0_11:
    movl    $99, %eax               #  20:     if     99 # 99 goto 15_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f0_15_if_true        
    jmp     l_f0_16_if_false        #  21:     goto   16_if_false
l_f0_15_if_true:
    jmp     l_f0_14                 #  23:     goto   14
l_f0_16_if_false:
l_f0_14:
l_f0_19_while_cond:
    movl    $97, %eax               #  27:     if     97 <= 97 goto 20_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f0_20_while_body     
    jmp     l_f0_18                 #  28:     goto   18
l_f0_20_while_body:
    jmp     l_f0_19_while_cond      #  30:     goto   19_while_cond
l_f0_18:
    jmp     l_f0_2                  #  32:     goto   2
l_f0_2:

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
    #    -13(%ebp)   1  [ $t6       <bool> %ebp-13 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #    -14(%ebp)   1  [ $v1       <bool> %ebp-14 ]

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
    jmp     l_f1_exit              
l_f1_2_while_cond:
    movl    $41606, %eax            #   2:     if     41606 > 3430 goto 3_while_body
    movl    $3430, %ebx            
    cmpl    %ebx, %eax             
    jg      l_f1_3_while_body      
    jmp     l_f1_1                  #   3:     goto   1
l_f1_3_while_body:
    movl    $63715, %eax            #   5:     assign v0 <- 63715
    movl    %eax, 8(%ebp)          
    jmp     l_f1_6                  #   6:     goto   6
l_f1_6:
    movl    $0, %eax                #   8:     if     0 = 1 goto 10_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_10_if_true        
    jmp     l_f1_11_if_false        #   9:     goto   11_if_false
l_f1_10_if_true:
    jmp     l_f1_9                  #  11:     goto   9
l_f1_11_if_false:
l_f1_9:
    movl    $41806, %eax            #  14:     if     41806 # 49552 goto 14
    movl    $49552, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f1_14                
    jmp     l_f1_15                 #  15:     goto   15
l_f1_14:
    movl    $1, %eax                #  17:     assign t6 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_16                 #  18:     goto   16
l_f1_15:
    movl    $0, %eax                #  20:     assign t6 <- 0
    movb    %al, -13(%ebp)         
l_f1_16:
    movzbl  -13(%ebp), %eax         #  22:     assign v1 <- t6
    movb    %al, -14(%ebp)         
    jmp     l_f1_exit              
    movl    $1, %eax                #  24:     assign v1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_exit              
    jmp     l_f1_2_while_cond       #  26:     goto   2_while_cond
l_f1_1:
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
    #    -13(%ebp)   1  [ $t6       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t7       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t8       <bool> %ebp-15 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 11 of <array 40 of <array 10 of <array 69 of <array 58 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <int> %ebp+20 ]
    #    -16(%ebp)   1  [ $v4       <char> %ebp-16 ]

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
    movl    $99, %eax               #   0:     if     99 < 98 goto 1
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f2_1                 
    jmp     l_f2_2                  #   1:     goto   2
l_f2_1:
    movl    $1, %eax                #   3:     assign t6 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_3                  #   4:     goto   3
l_f2_2:
    movl    $0, %eax                #   6:     assign t6 <- 0
    movb    %al, -13(%ebp)         
l_f2_3:
    movzbl  -13(%ebp), %eax         #   8:     return t6
    jmp     l_f2_exit              
    call    dummyBOOLfunc           #   9:     call   t7 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #  10:     if     t7 = 1 goto 7
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_7                 
    jmp     l_f2_8                  #  11:     goto   8
l_f2_7:
    movl    $1, %eax                #  13:     assign t8 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f2_9                  #  14:     goto   9
l_f2_8:
    movl    $0, %eax                #  16:     assign t8 <- 0
    movb    %al, -15(%ebp)         
l_f2_9:
    movzbl  -15(%ebp), %eax         #  18:     return t8
    jmp     l_f2_exit              
    movl    $97, %eax               #  19:     assign v4 <- 97
    movb    %al, -16(%ebp)         

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
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t2       <bool> %ebp-15 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t4       <char> %ebp-21 ]
    #    -28(%ebp)   4  [ $t5       <int> %ebp-28 ]

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
    call    dummyBOOLfunc           #   1:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     if     t0 = 1 goto 2_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_2_while_body    
    jmp     l_test_0                #   3:     goto   0
l_test_2_while_body:
    jmp     l_test_1_while_cond     #   5:     goto   1_while_cond
l_test_0:
    call    dummyBOOLfunc           #   7:     call   t1 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    movl    $99, %eax               #   8:     assign v0 <- 99
    movb    %al, v0                
l_test_9_while_cond:
    movl    $97, %eax               #  10:     if     97 < 100 goto 10_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_test_10_while_body   
    jmp     l_test_8                #  11:     goto   8
l_test_10_while_body:
    jmp     l_test_9_while_cond     #  13:     goto   9_while_cond
l_test_8:
    movl    $57299, %eax            #  15:     if     57299 = 22084 goto 13
    movl    $22084, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_13              
    jmp     l_test_14               #  16:     goto   14
l_test_13:
    movl    $1, %eax                #  18:     assign t2 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_test_15               #  19:     goto   15
l_test_14:
    movl    $0, %eax                #  21:     assign t2 <- 0
    movb    %al, -15(%ebp)         
l_test_15:
    movzbl  -15(%ebp), %eax         #  23:     assign v1 <- t2
    movb    %al, v1                
    jmp     l_test_3                #  24:     goto   3
l_test_3:
    call    dummyINTfunc            #  26:     call   t3 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  27:     assign v2 <- t3
    movl    %eax, v2               
l_test_19_while_cond:
    call    dummyCHARfunc           #  29:     call   t4 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    movl    $99, %eax               #  30:     if     99 >= t4 goto 20_while_body
    movzbl  -21(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_test_20_while_body   
    jmp     l_test_18               #  31:     goto   18
l_test_20_while_body:
l_test_23_while_cond:
    movl    $13645, %eax            #  34:     if     13645 <= 47481 goto 24_while_body
    movl    $47481, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_24_while_body   
    jmp     l_test_22               #  35:     goto   22
l_test_24_while_body:
    jmp     l_test_23_while_cond    #  37:     goto   23_while_cond
l_test_22:
    call    dummyINTfunc            #  39:     call   t5 <- dummyINTfunc
    movl    %eax, -28(%ebp)        
    call    WriteLn                 #  40:     call   WriteLn
    jmp     l_test_19_while_cond    #  41:     goto   19_while_cond
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
