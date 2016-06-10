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
    #    -13(%ebp)   1  [ $t4       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t5       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t7       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t8       <int> %ebp-28 ]

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
l_f0_1_while_cond:
    call    dummyBOOLfunc           #   1:     call   t4 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     if     t4 = 1 goto 8
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_8                 
    jmp     l_f0_5                  #   3:     goto   5
l_f0_8:
    jmp     l_f0_5                  #   5:     goto   5
    movl    $1, %eax                #   6:     assign t5 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f0_6                  #   7:     goto   6
l_f0_5:
    movl    $0, %eax                #   9:     assign t5 <- 0
    movb    %al, -14(%ebp)         
l_f0_6:
    movzbl  -14(%ebp), %eax         #  11:     if     t5 # 0 goto 2_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f0_2_while_body      
    jmp     l_f0_0                  #  12:     goto   0
l_f0_2_while_body:
    jmp     l_f0_1_while_cond       #  14:     goto   1_while_cond
l_f0_0:
    call    dummyINTfunc            #  16:     call   t6 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    call    ReadInt                 #  17:     call   t7 <- ReadInt
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  18:     add    t8 <- t7, 67283
    movl    $67283, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  19:     return t8
    jmp     l_f0_exit              

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
    #    -13(%ebp)   1  [ $t4       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t5       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $v0       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $v1       <bool> %ebp-21 ]

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
    movl    $56495, %eax            #   0:     assign v0 <- 56495
    movl    %eax, -20(%ebp)        
    movl    $1, %eax                #   1:     if     1 = 1 goto 2
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_2                 
    jmp     l_f1_3                  #   2:     goto   3
l_f1_2:
    movl    $1, %eax                #   4:     assign t4 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_4                  #   5:     goto   4
l_f1_3:
    movl    $0, %eax                #   7:     assign t4 <- 0
    movb    %al, -13(%ebp)         
l_f1_4:
    movzbl  -13(%ebp), %eax         #   9:     assign v1 <- t4
    movb    %al, -21(%ebp)         
    jmp     l_f1_8_if_false         #  10:     goto   8_if_false
    call    dummyBOOLfunc           #  11:     call   t5 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    jmp     l_f1_6                  #  12:     goto   6
l_f1_8_if_false:
l_f1_6:

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
    #    -16(%ebp)   4  [ $t4       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t6       <char> %ebp-21 ]
    #    -28(%ebp)   4  [ $t7       <int> %ebp-28 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #    -29(%ebp)   1  [ $v2       <bool> %ebp-29 ]

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
    movl    $68350, %eax            #   0:     div    t4 <- 68350, 50983
    movl    $50983, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     return t4
    jmp     l_f2_exit              
l_f2_2_while_cond:
    movl    $97, %eax               #   3:     if     97 <= 98 goto 3_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_3_while_body      
    jmp     l_f2_1                  #   4:     goto   1
l_f2_3_while_body:
    movl    $0, %eax                #   6:     assign v2 <- 0
    movb    %al, -29(%ebp)         
    movl    $97, %eax               #   7:     if     97 > 97 goto 7_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f2_7_if_true         
    jmp     l_f2_8_if_false         #   8:     goto   8_if_false
l_f2_7_if_true:
    call    ReadInt                 #  10:     call   t5 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    $26194, %eax            #  11:     return 26194
    jmp     l_f2_exit              
    jmp     l_f2_6                  #  12:     goto   6
l_f2_8_if_false:
l_f2_6:
    jmp     l_f2_2_while_cond       #  15:     goto   2_while_cond
l_f2_1:
    movl    $97894, %eax            #  17:     if     97894 = 26338 goto 13_if_true
    movl    $26338, %ebx           
    cmpl    %ebx, %eax             
    je      l_f2_13_if_true        
    jmp     l_f2_14_if_false        #  18:     goto   14_if_false
l_f2_13_if_true:
    movl    $98, %eax               #  20:     assign v0 <- 98
    movb    %al, 8(%ebp)           
    call    dummyCHARfunc           #  21:     call   t6 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
l_f2_19_while_cond:
    jmp     l_f2_19_while_cond      #  23:     goto   19_while_cond
    movl    $67060, %eax            #  24:     mul    t7 <- 67060, 65368
    movl    $65368, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  25:     return t7
    jmp     l_f2_exit              
    jmp     l_f2_12                 #  26:     goto   12
l_f2_14_if_false:
l_f2_12:

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
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t3       <bool> %ebp-21 ]

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
    call    dummyBOOLfunc           #   0:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    call    dummyProcedure          #   1:     call   dummyProcedure
    jmp     l_test_4_if_false       #   2:     goto   4_if_false
    call    dummyBOOLfunc           #   3:     call   t1 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    call    f0                      #   4:     call   t2 <- f0
    movl    %eax, -20(%ebp)        
    jmp     l_test_2                #   5:     goto   2
l_test_4_if_false:
l_test_2:
l_test_9_while_cond:
    jmp     l_test_12               #   9:     goto   12
l_test_12:
    movl    $1, %eax                #  11:     assign t3 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_test_14               #  12:     goto   14
    movl    $0, %eax                #  13:     assign t3 <- 0
    movb    %al, -21(%ebp)         
l_test_14:
    movl    $0, %eax                #  15:     if     0 # t3 goto 10_while_body
    movzbl  -21(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_test_10_while_body   
    jmp     l_test_8                #  16:     goto   8
l_test_10_while_body:
    movl    $5378, %eax             #  18:     if     5378 <= 95270 goto 17_if_true
    movl    $95270, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_17_if_true      
    jmp     l_test_18_if_false      #  19:     goto   18_if_false
l_test_17_if_true:
    jmp     l_test_16               #  21:     goto   16
l_test_18_if_false:
l_test_16:
    jmp     l_test_9_while_cond     #  24:     goto   9_while_cond
l_test_8:

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









    # end of global data section
    #-----------------------------------------

    .end
##################################################
