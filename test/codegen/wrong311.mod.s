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
    #    -13(%ebp)   1  [ $t3       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t5       <bool> %ebp-15 ]
    #    -20(%ebp)   4  [ $v0       <int> %ebp-20 ]

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
    movl    $92381, %eax            #   0:     assign v0 <- 92381
    movl    %eax, -20(%ebp)        
    jmp     l_f0_6                  #   1:     goto   6
    movl    $93842, %eax            #   2:     if     93842 < 74169 goto 6
    movl    $74169, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_6                 
    jmp     l_f0_7                  #   3:     goto   7
l_f0_6:
    movl    $1, %eax                #   5:     assign t3 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_8                  #   6:     goto   8
l_f0_7:
    movl    $0, %eax                #   8:     assign t3 <- 0
    movb    %al, -13(%ebp)         
l_f0_8:
    movl    $1, %eax                #  10:     if     1 # t3 goto 2
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f0_2                 
    jmp     l_f0_3                  #  11:     goto   3
l_f0_2:
    movl    $1, %eax                #  13:     assign t4 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f0_4                  #  14:     goto   4
l_f0_3:
    movl    $0, %eax                #  16:     assign t4 <- 0
    movb    %al, -14(%ebp)         
l_f0_4:
    movzbl  -14(%ebp), %eax         #  18:     return t4
    jmp     l_f0_exit              
    movl    $97, %eax               #  19:     if     97 < 100 goto 12
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f0_12                
    jmp     l_f0_13                 #  20:     goto   13
l_f0_12:
    movl    $1, %eax                #  22:     assign t5 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f0_14                 #  23:     goto   14
l_f0_13:
    movl    $0, %eax                #  25:     assign t5 <- 0
    movb    %al, -15(%ebp)         
l_f0_14:
    movzbl  -15(%ebp), %eax         #  27:     return t5
    jmp     l_f0_exit              

l_f0_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t3       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t5       <bool> %ebp-15 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 7 of <array 6 of <array 10 of <array 10 of <array 10 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 2 of <array 4 of <array 9 of <array 10 of <array 6 of <char>>>>>>> %ebp+20 ]

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
    call    dummyCHARfunc           #   0:     call   t3 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    call    dummyBOOLfunc           #   1:     call   t4 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    movl    $99, %eax               #   2:     if     99 >= 98 goto 6_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f1_6_if_true         
    jmp     l_f1_7_if_false         #   3:     goto   7_if_false
l_f1_6_if_true:
    jmp     l_f1_5                  #   5:     goto   5
l_f1_7_if_false:
l_f1_5:
    call    f0                      #   8:     call   t5 <- f0
    movb    %al, -15(%ebp)         
    jmp     l_f1_12_if_false        #   9:     goto   12_if_false
    jmp     l_f1_10                 #  10:     goto   10
l_f1_12_if_false:
l_f1_10:
    movl    $20230, %eax            #  13:     return 20230
    jmp     l_f1_exit              
    jmp     l_f1_14                 #  14:     goto   14
l_f1_14:
    jmp     l_f1_2                  #  16:     goto   2
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
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t5       <char> %ebp-21 ]
    #    -22(%ebp)   1  [ $t6       <bool> %ebp-22 ]
    #    -23(%ebp)   1  [ $t7       <bool> %ebp-23 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 10 of <array 8 of <array 6 of <array 10 of <array 2 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <char> %ebp+20 ]

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
l_f2_1_while_cond:
    movl    $12251, %eax            #   1:     add    t3 <- 12251, 36143
    movl    $36143, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     add    t4 <- t3, 21357
    movl    $21357, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $86201, %eax            #   3:     if     86201 >= t4 goto 2_while_body
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f2_2_while_body      
    jmp     l_f2_0                  #   4:     goto   0
l_f2_2_while_body:
    movl    $97, %eax               #   6:     if     97 < 100 goto 5_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f2_5_if_true         
    jmp     l_f2_6_if_false         #   7:     goto   6_if_false
l_f2_5_if_true:
    jmp     l_f2_4                  #   9:     goto   4
l_f2_6_if_false:
l_f2_4:
    call    dummyCHARfunc           #  12:     call   t5 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    jmp     l_f2_exit              
    jmp     l_f2_1_while_cond       #  14:     goto   1_while_cond
l_f2_0:
    jmp     l_f2_11                 #  16:     goto   11
    jmp     l_f2_12                 #  17:     goto   12
l_f2_11:
    movl    $1, %eax                #  19:     assign t6 <- 1
    movb    %al, -22(%ebp)         
    jmp     l_f2_13                 #  20:     goto   13
l_f2_12:
    movl    $0, %eax                #  22:     assign t6 <- 0
    movb    %al, -22(%ebp)         
l_f2_13:
    movzbl  -22(%ebp), %eax         #  24:     assign v1 <- t6
    movb    %al, 12(%ebp)          
l_f2_16_while_cond:
    jmp     l_f2_15                 #  26:     goto   15
    call    dummyBOOLfunc           #  27:     call   t7 <- dummyBOOLfunc
    movb    %al, -23(%ebp)         
    jmp     l_f2_16_while_cond      #  28:     goto   16_while_cond
l_f2_15:

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
    #    -15(%ebp)   1  [ $t2       <char> %ebp-15 ]

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
    movl    $1, %eax                #   0:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_3                #   1:     goto   3
    movl    $0, %eax                #   2:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_3:
    movzbl  -13(%ebp), %eax         #   4:     assign v0 <- t0
    movb    %al, v0                
    call    dummyCHARfunc           #   5:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    call    dummyCHARfunc           #   6:     call   t2 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    movzbl  -15(%ebp), %eax         #   7:     assign v1 <- t2
    movb    %al, v1                

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
v0:                                 # <bool>
    .skip    1
v1:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
