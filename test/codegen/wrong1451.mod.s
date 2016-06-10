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
    #    -14(%ebp)   1  [ $v1       <char> %ebp-14 ]

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
    movl    $1, %eax                #   0:     if     1 # 1 goto 1_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   1:     goto   2_if_false
l_f0_1_if_true:
l_f0_5_while_cond:
    movl    $100, %eax              #   4:     assign v1 <- 100
    movb    %al, -14(%ebp)         
    jmp     l_f0_5_while_cond       #   5:     goto   5_while_cond
    jmp     l_f0_0                  #   6:     goto   0
l_f0_2_if_false:
l_f0_0:
    movl    $99, %eax               #   9:     assign v1 <- 99
    movb    %al, -14(%ebp)         
    call    dummyCHARfunc           #  10:     call   t5 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #  11:     return t5
    jmp     l_f0_exit              

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
    #    -13(%ebp)   1  [ $t5       <char> %ebp-13 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]

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
    movl    $100, %eax              #   0:     return 100
    jmp     l_f1_exit              
l_f1_2_while_cond:
    movl    $100, %eax              #   2:     return 100
    jmp     l_f1_exit              
    jmp     l_f1_5                  #   3:     goto   5
l_f1_5:
    movl    $97, %eax               #   5:     assign v1 <- 97
    movb    %al, 8(%ebp)           
    movl    $99, %eax               #   6:     return 99
    jmp     l_f1_exit              
    jmp     l_f1_2_while_cond       #   7:     goto   2_while_cond
    call    dummyCHARfunc           #   8:     call   t5 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   9:     return t5
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
    #    -13(%ebp)   1  [ $t5       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t7       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $v1       <bool> %ebp-25 ]
    #    -32(%ebp)   4  [ $v2       <int> %ebp-32 ]

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
    movl    $70782, %eax            #   0:     if     70782 >= 40243 goto 1
    movl    $40243, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_1                 
    jmp     l_f2_1                  #   1:     goto   1
    jmp     l_f2_1                  #   2:     goto   1
    jmp     l_f2_2                  #   3:     goto   2
l_f2_1:
    movl    $1, %eax                #   5:     assign t5 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_3                  #   6:     goto   3
l_f2_2:
    movl    $0, %eax                #   8:     assign t5 <- 0
    movb    %al, -13(%ebp)         
l_f2_3:
    movzbl  -13(%ebp), %eax         #  10:     assign v1 <- t5
    movb    %al, -25(%ebp)         
    movl    $15485, %eax            #  11:     add    t6 <- 15485, 63579
    movl    $63579, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  12:     assign v2 <- t6
    movl    %eax, -32(%ebp)        
    movl    $99883, %eax            #  13:     sub    t7 <- 99883, 12934
    movl    $12934, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  14:     return t7
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $20, %esp               # remove locals
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
    #    -15(%ebp)   1  [ $t2       <bool> %ebp-15 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t4       <bool> %ebp-21 ]

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
l_test_1_while_cond:
    jmp     l_test_2_while_body     #   1:     goto   2_while_body
    jmp     l_test_0                #   2:     goto   0
l_test_2_while_body:
    call    dummyCHARfunc           #   4:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    jmp     l_test_1_while_cond     #   5:     goto   1_while_cond
l_test_0:
    jmp     l_test_exit            
    call    dummyBOOLfunc           #   8:     call   t1 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   9:     if     t1 = 1 goto 8
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_8               
    jmp     l_test_8                #  10:     goto   8
l_test_8:
    movl    $1, %eax                #  12:     assign t2 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_test_10               #  13:     goto   10
    movl    $0, %eax                #  14:     assign t2 <- 0
    movb    %al, -15(%ebp)         
l_test_10:
    movzbl  -15(%ebp), %eax         #  16:     assign v0 <- t2
    movb    %al, v0                
l_test_14_while_cond:
    jmp     l_test_14_while_cond    #  18:     goto   14_while_cond
    movl    $36127, %eax            #  19:     if     36127 >= 75146 goto 18_if_true
    movl    $75146, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_18_if_true      
    jmp     l_test_19_if_false      #  20:     goto   19_if_false
l_test_18_if_true:
    call    f2                      #  22:     call   t3 <- f2
    movl    %eax, -20(%ebp)        
    jmp     l_test_17               #  23:     goto   17
l_test_19_if_false:
l_test_17:
    jmp     l_test_24               #  26:     goto   24
    movl    $1, %eax                #  27:     assign t4 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_test_25               #  28:     goto   25
l_test_24:
    movl    $0, %eax                #  30:     assign t4 <- 0
    movb    %al, -21(%ebp)         
l_test_25:
    movzbl  -21(%ebp), %eax         #  32:     assign v0 <- t4
    movb    %al, v0                

l_test_exit:
    # epilogue
    addl    $12, %esp               # remove locals
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








    # end of global data section
    #-----------------------------------------

    .end
##################################################
