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
    #    -14(%ebp)   1  [ $t6       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t7       <bool> %ebp-15 ]
    #    -20(%ebp)   4  [ $t8       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t9       <int> %ebp-24 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 92 of <array 55 of <array 72 of <array 21 of <array 47 of <char>>>>>>> %ebp+8 ]

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
    movl    $77049, %eax            #   0:     if     77049 = 79244 goto 1
    movl    $79244, %ebx           
    cmpl    %ebx, %eax             
    je      l_f0_1                 
    jmp     l_f0_2                  #   1:     goto   2
l_f0_1:
    movl    $1, %eax                #   3:     assign t6 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f0_3                  #   4:     goto   3
l_f0_2:
    movl    $0, %eax                #   6:     assign t6 <- 0
    movb    %al, -14(%ebp)         
l_f0_3:
    movzbl  -14(%ebp), %eax         #   8:     return t6
    jmp     l_f0_exit              
    movl    $97, %eax               #   9:     if     97 # 99 goto 7
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f0_7                 
    jmp     l_f0_8                  #  10:     goto   8
l_f0_7:
    movl    $1, %eax                #  12:     assign t7 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f0_9                  #  13:     goto   9
l_f0_8:
    movl    $0, %eax                #  15:     assign t7 <- 0
    movb    %al, -15(%ebp)         
l_f0_9:
    movzbl  -15(%ebp), %eax         #  17:     return t7
    jmp     l_f0_exit              
    movl    $65188, %eax            #  18:     add    t8 <- 65188, 45063
    movl    $45063, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $72624, %eax            #  19:     add    t9 <- 72624, 51651
    movl    $51651, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  20:     if     t8 <= t9 goto 13
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f0_13                
    jmp     l_f0_14                 #  21:     goto   14
l_f0_13:
    movl    $1, %eax                #  23:     assign t10 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_15                 #  24:     goto   15
l_f0_14:
    movl    $0, %eax                #  26:     assign t10 <- 0
    movb    %al, -13(%ebp)         
l_f0_15:
    movzbl  -13(%ebp), %eax         #  28:     return t10
    jmp     l_f0_exit              

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
    #    -16(%ebp)   4  [ $t6       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t7       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t8       <char> %ebp-21 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 21 of <array 57 of <array 59 of <array 11 of <array 34 of <char>>>>>>> %ebp+8 ]
    #    -28(%ebp)   4  [ $v2       <int> %ebp-28 ]

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
    movl    $79515, %eax            #   0:     div    t6 <- 79515, 98187
    movl    $98187, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     add    t7 <- t6, 81229
    movl    $81229, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     assign v2 <- t7
    movl    %eax, -28(%ebp)        
l_f1_2_while_cond:
    movl    $99, %eax               #   4:     if     99 > 99 goto 3_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f1_3_while_body      
l_f1_3_while_body:
    jmp     l_f1_2_while_cond       #   6:     goto   2_while_cond
    call    dummyCHARfunc           #   7:     call   t8 <- dummyCHARfunc
    movb    %al, -21(%ebp)         

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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t6       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t7       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t8       <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $t9       <char> %ebp-33 ]

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
    movl    $14915, %eax            #   0:     sub    t6 <- 14915, 18043
    movl    $18043, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    call    dummyINTfunc            #   1:     call   t7 <- dummyINTfunc
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #   2:     add    t8 <- t6, t7
    movl    -28(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   3:     return t8
    jmp     l_f2_exit              
    call    dummyCHARfunc           #   4:     call   t9 <- dummyCHARfunc
    movb    %al, -33(%ebp)         
    jmp     l_f2_1                  #   5:     goto   1
l_f2_1:
l_f2_6_while_cond:
    jmp     l_f2_5                  #   8:     goto   5
    movl    $30385, %eax            #   9:     div    t10 <- 30385, 11029
    movl    $11029, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  10:     div    t11 <- t10, 48100
    movl    $48100, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  11:     return t11
    jmp     l_f2_exit              
    jmp     l_f2_6_while_cond       #  12:     goto   6_while_cond
l_f2_5:

l_f2_exit:
    # epilogue
    addl    $24, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t4       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t5       <bool> %ebp-29 ]

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
    call    dummyCHARfunc           #   0:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $100, %eax              #   1:     if     100 > t0 goto 1_if_true
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_test_1_if_true       
    jmp     l_test_2_if_false       #   2:     goto   2_if_false
l_test_1_if_true:
    movl    $1, %eax                #   4:     assign v0 <- 1
    movb    %al, v0                
    movl    $59611, %eax            #   5:     if     59611 <= 61357 goto 6
    movl    $61357, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_6               
    jmp     l_test_7                #   6:     goto   7
l_test_6:
    movl    $1, %eax                #   8:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_test_8                #   9:     goto   8
l_test_7:
    movl    $0, %eax                #  11:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_test_8:
    movzbl  -14(%ebp), %eax         #  13:     assign v0 <- t1
    movb    %al, v0                
    jmp     l_test_0                #  14:     goto   0
l_test_2_if_false:
l_test_0:
l_test_11_while_cond:
    call    dummyINTfunc            #  18:     call   t2 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    jmp     l_test_11_while_cond    #  19:     goto   11_while_cond
    movl    $79214, %eax            #  20:     mul    t3 <- 79214, 42394
    movl    $42394, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    $70940, %eax            #  21:     sub    t4 <- 70940, t3
    movl    -24(%ebp), %ebx        
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  22:     assign v1 <- t4
    movl    %eax, v1               
    jmp     l_test_exit            
    movl    $97, %eax               #  24:     if     97 <= 100 goto 17_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_test_17_if_true      
    jmp     l_test_18_if_false      #  25:     goto   18_if_false
l_test_17_if_true:
    movl    $53066, %eax            #  27:     if     53066 > 3137 goto 21
    movl    $3137, %ebx            
    cmpl    %ebx, %eax             
    jg      l_test_21              
    jmp     l_test_22               #  28:     goto   22
l_test_21:
    movl    $1, %eax                #  30:     assign t5 <- 1
    movb    %al, -29(%ebp)         
    jmp     l_test_23               #  31:     goto   23
l_test_22:
    movl    $0, %eax                #  33:     assign t5 <- 0
    movb    %al, -29(%ebp)         
l_test_23:
    movzbl  -29(%ebp), %eax         #  35:     assign v0 <- t5
    movb    %al, v0                
l_test_26_while_cond:
    jmp     l_test_26_while_cond    #  37:     goto   26_while_cond
    jmp     l_test_exit            
    jmp     l_test_16               #  39:     goto   16
l_test_18_if_false:
l_test_16:

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
v0:                                 # <bool>
    .skip    1
    .align   4
v1:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
