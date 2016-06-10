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
    #    -16(%ebp)   4  [ $t4       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t6       <bool> %ebp-21 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 8 of <array 81 of <array 86 of <array 47 of <array 48 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 65 of <array 82 of <array 64 of <array 92 of <array 66 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <int> %ebp+20 ]
    #    -22(%ebp)   1  [ $v4       <bool> %ebp-22 ]

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
    call    ReadInt                 #   0:     call   t4 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    $82649, %eax            #   1:     add    t5 <- 82649, 64015
    movl    $64015, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     if     t5 > 44494 goto 2
    movl    $44494, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_2                 
    jmp     l_f0_3                  #   3:     goto   3
l_f0_2:
    movl    $1, %eax                #   5:     assign t6 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f0_4                  #   6:     goto   4
l_f0_3:
    movl    $0, %eax                #   8:     assign t6 <- 0
    movb    %al, -21(%ebp)         
l_f0_4:
    movzbl  -21(%ebp), %eax         #  10:     assign v4 <- t6
    movb    %al, -22(%ebp)         
    movl    $99, %eax               #  11:     assign v2 <- 99
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
    #    -16(%ebp)   4  [ $t4       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t6       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t7       <char> %ebp-25 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]

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
    movl    $15198, %eax            #   0:     sub    t4 <- 15198, 10500
    movl    $10500, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     add    t5 <- t4, 25982
    movl    $25982, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     add    t6 <- t5, 7282
    movl    $7282, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     return t6
    jmp     l_f1_exit              
    call    dummyCHARfunc           #   4:     call   t7 <- dummyCHARfunc
    movb    %al, -25(%ebp)         
    movzbl  -25(%ebp), %eax         #   5:     assign v0 <- t7
    movb    %al, 8(%ebp)           
    movl    $99, %eax               #   6:     if     99 < 97 goto 3_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_3_if_true         
    jmp     l_f1_4_if_false         #   7:     goto   4_if_false
l_f1_3_if_true:
    jmp     l_f1_6                  #   9:     goto   6
l_f1_6:
    jmp     l_f1_2                  #  11:     goto   2
l_f1_4_if_false:
l_f1_2:

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
    #    -13(%ebp)   1  [ $t4       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t5       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 48 of <array 74 of <array 88 of <array 60 of <array 38 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]

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
    call    dummyCHARfunc           #   0:     call   t4 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $97, %eax               #   1:     if     97 # t4 goto 1
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f2_1                 
    jmp     l_f2_2                  #   2:     goto   2
l_f2_1:
    movl    $1, %eax                #   4:     assign t5 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_3                  #   5:     goto   3
l_f2_2:
    movl    $0, %eax                #   7:     assign t5 <- 0
    movb    %al, -14(%ebp)         
l_f2_3:
    movzbl  -14(%ebp), %eax         #   9:     assign v1 <- t5
    movb    %al, 12(%ebp)          
l_f2_6_while_cond:
    movl    $97, %eax               #  11:     if     97 < 98 goto 7_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f2_7_while_body      
    jmp     l_f2_5                  #  12:     goto   5
l_f2_7_while_body:
    jmp     l_f2_6_while_cond       #  14:     goto   6_while_cond
l_f2_5:
    call    dummyINTfunc            #  16:     call   t6 <- dummyINTfunc
    movl    %eax, -20(%ebp)        

l_f2_exit:
    # epilogue
    addl    $8, %esp                # remove locals
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
    #    -24(%ebp)   4  [ $t2       <ptr(4) to <array 65 of <array 82 of <array 64 of <array 92 of <array 66 of <int>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <ptr(4) to <array 8 of <array 81 of <array 86 of <array 47 of <array 48 of <char>>>>>>> %ebp-28 ]

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
    movl    $26284, %eax            #   0:     if     26284 # 46891 goto 1_if_true
    movl    $46891, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_1_if_true       
    jmp     l_test_2_if_false       #   1:     goto   2_if_false
l_test_1_if_true:
l_test_5_while_cond:
    movl    $26300, %eax            #   4:     add    t0 <- 26300, 92190
    movl    $92190, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   5:     if     t0 # 20829 goto 6_while_body
    movl    $20829, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_6_while_body    
    jmp     l_test_4                #   6:     goto   4
l_test_6_while_body:
    jmp     l_test_5_while_cond     #   8:     goto   5_while_cond
l_test_4:
    jmp     l_test_0                #  10:     goto   0
l_test_2_if_false:
l_test_0:
    jmp     l_test_11               #  13:     goto   11
    jmp     l_test_9_if_true        #  14:     goto   9_if_true
l_test_11:
l_test_9_if_true:
    jmp     l_test_8                #  17:     goto   8
l_test_8:
    call    dummyBOOLfunc           #  19:     call   t1 <- dummyBOOLfunc
    movb    %al, -17(%ebp)         
    jmp     l_test_exit            
    movl    $18434, %eax            #  21:     param  3 <- 18434
    pushl   %eax                   
    movl    $99, %eax               #  22:     param  2 <- 99
    pushl   %eax                   
    leal    v1, %eax                #  23:     &()    t2 <- v1
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  24:     param  1 <- t2
    pushl   %eax                   
    leal    v0, %eax                #  25:     &()    t3 <- v0
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  26:     param  0 <- t3
    pushl   %eax                   
    call    f0                      #  27:     call   f0
    addl    $16, %esp              

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
v0:                                 # <array 8 of <array 81 of <array 86 of <array 47 of <array 48 of <char>>>>>>
    .long    5
    .long    8
    .long   81
    .long   86
    .long   47
    .long   48
    .skip 125722368
v1:                                 # <array 65 of <array 82 of <array 64 of <array 92 of <array 66 of <int>>>>>>
    .long    5
    .long   65
    .long   82
    .long   64
    .long   92
    .long   66
    .skip -304812032








    # end of global data section
    #-----------------------------------------

    .end
##################################################
