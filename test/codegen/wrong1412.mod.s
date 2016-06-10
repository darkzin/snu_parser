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
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $v0       <int> %ebp-28 ]

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
    call    dummyBOOLfunc           #   0:     call   t2 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $98, %eax               #   1:     if     98 = 100 goto 2_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    je      l_f0_2_if_true         
    jmp     l_f0_3_if_false         #   2:     goto   3_if_false
l_f0_2_if_true:
    jmp     l_f0_1                  #   4:     goto   1
l_f0_3_if_false:
l_f0_1:
    movl    $41603, %eax            #   7:     sub    t3 <- 41603, 53449
    movl    $53449, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   8:     add    t4 <- t3, 34776
    movl    $34776, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   9:     assign v0 <- t4
    movl    %eax, -28(%ebp)        

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
    #    -13(%ebp)   1  [ $t2       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t3       <char> %ebp-14 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $v0       <bool> %ebp-21 ]

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
l_f1_1_while_cond:
    movl    $1, %eax                #   1:     assign v0 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f1_1_while_cond       #   2:     goto   1_while_cond
    call    dummyBOOLfunc           #   3:     call   t2 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $0, %eax                #   4:     return 0
    jmp     l_f1_exit              
    call    dummyCHARfunc           #   5:     call   t3 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movl    $0, %eax                #   6:     return 0
    jmp     l_f1_exit              
    jmp     l_f1_4                  #   7:     goto   4
l_f1_4:
    call    ReadInt                 #   9:     call   t4 <- ReadInt
    movl    %eax, -20(%ebp)        

l_f1_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t2       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t3       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t4       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $t5       <bool> %ebp-16 ]

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
    call    dummyBOOLfunc           #   1:     call   t3 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   2:     return t3
    jmp     l_f2_exit              
    call    f1                      #   3:     call   t4 <- f1
    movb    %al, -15(%ebp)         
    movzbl  -15(%ebp), %eax         #   4:     if     t4 = 1 goto 9
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_9                 
    jmp     l_f2_4                  #   5:     goto   4
l_f2_9:
    jmp     l_f2_4                  #   7:     goto   4
    jmp     l_f2_4                  #   8:     goto   4
    movl    $1, %eax                #   9:     assign t5 <- 1
    movb    %al, -16(%ebp)         
    jmp     l_f2_5                  #  10:     goto   5
l_f2_4:
    movl    $0, %eax                #  12:     assign t5 <- 0
    movb    %al, -16(%ebp)         
l_f2_5:
    movzbl  -16(%ebp), %eax         #  14:     return t5
    jmp     l_f2_exit              

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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <char> %ebp-17 ]

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
    jmp     l_test_2_if_false       #   0:     goto   2_if_false
    call    ReadInt                 #   1:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
    jmp     l_test_exit            
l_test_6_while_cond:
    jmp     l_test_6_while_cond     #   4:     goto   6_while_cond
    movl    $10206, %eax            #   5:     if     10206 = 47946 goto 9_if_true
    movl    $47946, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_9_if_true       
    jmp     l_test_10_if_false      #   6:     goto   10_if_false
l_test_9_if_true:
    jmp     l_test_8                #   8:     goto   8
l_test_10_if_false:
l_test_8:
    movl    $97, %eax               #  11:     if     97 < 97 goto 13_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_13_if_true      
    jmp     l_test_14_if_false      #  12:     goto   14_if_false
l_test_13_if_true:
    jmp     l_test_12               #  14:     goto   12
l_test_14_if_false:
l_test_12:
    jmp     l_test_0                #  17:     goto   0
l_test_2_if_false:
l_test_0:
l_test_17_while_cond:
l_test_20_while_cond:
    jmp     l_test_20_while_cond    #  22:     goto   20_while_cond
l_test_23_while_cond:
    movl    $97, %eax               #  24:     if     97 <= 99 goto 24_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_24_while_body   
    jmp     l_test_22               #  25:     goto   22
l_test_24_while_body:
    jmp     l_test_23_while_cond    #  27:     goto   23_while_cond
l_test_22:
    jmp     l_test_26               #  29:     goto   26
l_test_26:
l_test_30_while_cond:
    jmp     l_test_29               #  32:     goto   29
    jmp     l_test_30_while_cond    #  33:     goto   30_while_cond
l_test_29:
    jmp     l_test_exit            
    jmp     l_test_17_while_cond    #  36:     goto   17_while_cond
    call    dummyCHARfunc           #  37:     call   t1 <- dummyCHARfunc
    movb    %al, -17(%ebp)         

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









    # end of global data section
    #-----------------------------------------

    .end
##################################################
