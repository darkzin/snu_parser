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
    #    -13(%ebp)   1  [ $t1       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t3       <bool> %ebp-21 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <bool> %ebp+16 ]

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
    movl    $99, %eax               #   0:     assign v1 <- 99
    movb    %al, 8(%ebp)           
l_f0_2_while_cond:
    jmp     l_f0_3_while_body       #   2:     goto   3_while_body
    call    dummyBOOLfunc           #   3:     call   t1 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   4:     if     t1 = 1 goto 3_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_3_while_body      
    jmp     l_f0_1                  #   5:     goto   1
l_f0_3_while_body:
    jmp     l_f0_2_while_cond       #   7:     goto   2_while_cond
l_f0_1:
    movl    $99489, %eax            #   9:     sub    t2 <- 99489, 49986
    movl    $49986, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  10:     if     t2 >= 21883 goto 6
    movl    $21883, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_6                 
    jmp     l_f0_7                  #  11:     goto   7
l_f0_6:
    movl    $1, %eax                #  13:     assign t3 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f0_8                  #  14:     goto   8
l_f0_7:
    movl    $0, %eax                #  16:     assign t3 <- 0
    movb    %al, -21(%ebp)         
l_f0_8:
    movzbl  -21(%ebp), %eax         #  18:     assign v3 <- t3
    movb    %al, 16(%ebp)          

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
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $v1       <int> %ebp-28 ]

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
l_f1_1_while_cond:
    movl    $46360, %eax            #   1:     mul    t1 <- 46360, 83684
    movl    $83684, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     div    t2 <- t1, 21977
    movl    $21977, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     sub    t3 <- t2, 9548
    movl    $9548, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   4:     if     t3 < 5992 goto 2_while_body
    movl    $5992, %ebx            
    cmpl    %ebx, %eax             
    jl      l_f1_2_while_body      
    jmp     l_f1_0                  #   5:     goto   0
l_f1_2_while_body:
    jmp     l_f1_1_while_cond       #   7:     goto   1_while_cond
l_f1_0:
l_f1_5_while_cond:
    jmp     l_f1_4                  #  10:     goto   4
    jmp     l_f1_5_while_cond       #  11:     goto   5_while_cond
l_f1_4:
    movl    $83258, %eax            #  13:     assign v1 <- 83258
    movl    %eax, -28(%ebp)        

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
    #    -13(%ebp)   1  [ $t1       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t2       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t3       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $t4       <char> %ebp-16 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 18 of <array 13 of <array 60 of <array 62 of <array 89 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <bool> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <int> %ebp+20 ]

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
    movl    $1, %eax                #   0:     param  2 <- 1
    pushl   %eax                   
    movl    $1, %eax                #   1:     assign t1 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_3                  #   2:     goto   3
    movl    $0, %eax                #   3:     assign t1 <- 0
    movb    %al, -13(%ebp)         
l_f2_3:
    movzbl  -13(%ebp), %eax         #   5:     param  1 <- t1
    pushl   %eax                   
    movl    $100, %eax              #   6:     param  0 <- 100
    pushl   %eax                   
    call    f0                      #   7:     call   t2 <- f0
    addl    $12, %esp              
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   8:     return t2
    jmp     l_f2_exit              
    call    f1                      #   9:     call   t3 <- f1
    movb    %al, -15(%ebp)         
    call    dummyCHARfunc           #  10:     call   t4 <- dummyCHARfunc
    movb    %al, -16(%ebp)         
    movzbl  -16(%ebp), %eax         #  11:     return t4
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
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]

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
    jmp     l_test_exit            
l_test_2_while_cond:
    movl    $97, %eax               #   2:     if     97 # 97 goto 3_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_3_while_body    
    jmp     l_test_1                #   3:     goto   1
l_test_3_while_body:
l_test_6_while_cond:
    jmp     l_test_5                #   6:     goto   5
    movl    $99, %eax               #   7:     assign v0 <- 99
    movb    %al, v0                
l_test_10_while_cond:
    jmp     l_test_9                #   9:     goto   9
    jmp     l_test_10_while_cond    #  10:     goto   10_while_cond
l_test_9:
    jmp     l_test_6_while_cond     #  12:     goto   6_while_cond
l_test_5:
    jmp     l_test_2_while_cond     #  14:     goto   2_while_cond
l_test_1:
    movl    $99, %eax               #  16:     if     99 >= 97 goto 13_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_13_if_true      
    jmp     l_test_14_if_false      #  17:     goto   14_if_false
l_test_13_if_true:
    jmp     l_test_exit            
    jmp     l_test_12               #  20:     goto   12
l_test_14_if_false:
l_test_12:
l_test_18_while_cond:
    movl    $98, %eax               #  24:     if     98 <= 100 goto 19_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_test_19_while_body   
    jmp     l_test_17               #  25:     goto   17
l_test_19_while_body:
    movl    $10803, %eax            #  27:     assign v1 <- 10803
    movl    %eax, v1               
    call    f1                      #  28:     call   t0 <- f1
    movb    %al, -13(%ebp)         
    movl    $100, %eax              #  29:     assign v0 <- 100
    movb    %al, v0                
    jmp     l_test_18_while_cond    #  30:     goto   18_while_cond
l_test_17:
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
    .align   4
v1:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
