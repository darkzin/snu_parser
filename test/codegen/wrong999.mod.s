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
    #    -13(%ebp)   1  [ $t6       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t7       <bool> %ebp-14 ]
    #      8(%ebp)   1  [ %v2       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v4       <int> %ebp+16 ]

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
l_f0_1_while_cond:
    call    dummyBOOLfunc           #   1:     call   t6 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     if     t6 = 1 goto 2_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_2_while_body      
l_f0_2_while_body:
    jmp     l_f0_1_while_cond       #   4:     goto   1_while_cond
l_f0_5_while_cond:
    call    dummyBOOLfunc           #   6:     call   t7 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   7:     if     t7 = 1 goto 6_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_6_while_body      
    jmp     l_f0_4                  #   8:     goto   4
l_f0_6_while_body:
    jmp     l_f0_5_while_cond       #  10:     goto   5_while_cond
l_f0_4:
    jmp     l_f0_10_if_false        #  12:     goto   10_if_false
    movl    $99, %eax               #  13:     return 99
    jmp     l_f0_exit              
    jmp     l_f0_12                 #  14:     goto   12
l_f0_12:
l_f0_16_while_cond:
    jmp     l_f0_15                 #  17:     goto   15
    jmp     l_f0_16_while_cond      #  18:     goto   16_while_cond
l_f0_15:
    jmp     l_f0_8                  #  20:     goto   8
l_f0_10_if_false:
l_f0_8:

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
    #    -13(%ebp)   1  [ $t6       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t7       <char> %ebp-14 ]
    #      8(%ebp)   1  [ %v2       <bool> %ebp+8 ]

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
    movl    $100, %eax              #   0:     if     100 # 100 goto 1_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jne     l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   1:     goto   2_if_false
l_f1_1_if_true:
    movl    $31212, %eax            #   3:     if     31212 = 16703 goto 5_if_true
    movl    $16703, %ebx           
    cmpl    %ebx, %eax             
    je      l_f1_5_if_true         
    jmp     l_f1_6_if_false         #   4:     goto   6_if_false
l_f1_5_if_true:
    jmp     l_f1_4                  #   6:     goto   4
l_f1_6_if_false:
l_f1_4:
    jmp     l_f1_0                  #   9:     goto   0
l_f1_2_if_false:
l_f1_0:
    call    dummyCHARfunc           #  12:     call   t6 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #  13:     return t6
    jmp     l_f1_exit              
l_f1_10_while_cond:
    movl    $50935, %eax            #  15:     param  2 <- 50935
    pushl   %eax                   
    movl    $78391, %eax            #  16:     param  1 <- 78391
    pushl   %eax                   
    movl    $0, %eax                #  17:     param  0 <- 0
    pushl   %eax                   
    call    f0                      #  18:     call   t7 <- f0
    addl    $12, %esp              
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #  19:     if     t7 > 99 goto 11_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f1_11_while_body     
    jmp     l_f1_9                  #  20:     goto   9
l_f1_11_while_body:
    jmp     l_f1_10_while_cond      #  22:     goto   10_while_cond
l_f1_9:

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
    #    -16(%ebp)   4  [ $t6       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t7       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t8       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t9       <char> %ebp-22 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 2 of <array 5 of <array 6 of <array 10 of <array 9 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v3       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v4       <int> %ebp+16 ]
    #     20(%ebp)   4  [ %v5       <ptr(4) to <array 2 of <array 1 of <array 1 of <array 5 of <array 1 of <char>>>>>>> %ebp+20 ]
    #    -23(%ebp)   1  [ $v6       <bool> %ebp-23 ]

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
    call    ReadInt                 #   0:     call   t6 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    $35761, %eax            #   1:     sub    t7 <- 35761, t6
    movl    -16(%ebp), %ebx        
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     assign v4 <- t7
    movl    %eax, 16(%ebp)         
    movl    $99, %eax               #   3:     if     99 < 99 goto 2
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f2_2                 
    jmp     l_f2_3                  #   4:     goto   3
l_f2_2:
    movl    $1, %eax                #   6:     assign t8 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f2_4                  #   7:     goto   4
l_f2_3:
    movl    $0, %eax                #   9:     assign t8 <- 0
    movb    %al, -21(%ebp)         
l_f2_4:
    movzbl  -21(%ebp), %eax         #  11:     assign v6 <- t8
    movb    %al, -23(%ebp)         
    call    dummyCHARfunc           #  12:     call   t9 <- dummyCHARfunc
    movb    %al, -22(%ebp)         

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
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <char> %ebp-14 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t3       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t4       <char> %ebp-22 ]
    #    -23(%ebp)   1  [ $t5       <char> %ebp-23 ]

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
    movl    $0, %eax                #   0:     if     0 # 1 goto 1
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_1               
    jmp     l_test_2                #   1:     goto   2
l_test_1:
    movl    $1, %eax                #   3:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_3                #   4:     goto   3
l_test_2:
    movl    $0, %eax                #   6:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_3:
    movzbl  -13(%ebp), %eax         #   8:     assign v0 <- t0
    movb    %al, v0                
    jmp     l_test_exit            
    call    dummyCHARfunc           #  10:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #  11:     assign v1 <- t1
    movb    %al, v1                
    movl    $85110, %eax            #  12:     sub    t2 <- 85110, 87354
    movl    $87354, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  13:     if     t2 > 44976 goto 8
    movl    $44976, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_8               
    jmp     l_test_9                #  14:     goto   9
l_test_8:
    movl    $1, %eax                #  16:     assign t3 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_test_10               #  17:     goto   10
l_test_9:
    movl    $0, %eax                #  19:     assign t3 <- 0
    movb    %al, -21(%ebp)         
l_test_10:
    movzbl  -21(%ebp), %eax         #  21:     param  0 <- t3
    pushl   %eax                   
    call    f1                      #  22:     call   t4 <- f1
    addl    $4, %esp               
    movb    %al, -22(%ebp)         
    movl    $1, %eax                #  23:     param  0 <- 1
    pushl   %eax                   
    call    f1                      #  24:     call   t5 <- f1
    addl    $4, %esp               
    movb    %al, -23(%ebp)         
    call    WriteLn                 #  25:     call   WriteLn

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
v1:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
