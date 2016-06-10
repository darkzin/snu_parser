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
    #    -14(%ebp)   1  [ $t3       <char> %ebp-14 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 93 of <array 38 of <array 39 of <array 73 of <array 9 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 12 of <array 86 of <array 34 of <array 40 of <array 29 of <bool>>>>>>> %ebp+12 ]
    #    -15(%ebp)   1  [ $v2       <bool> %ebp-15 ]

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
    jmp     l_f0_exit              
    movl    $100, %eax              #   1:     if     100 = 100 goto 2
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    je      l_f0_2                 
    jmp     l_f0_3                  #   2:     goto   3
l_f0_2:
    movl    $1, %eax                #   4:     assign t2 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_4                  #   5:     goto   4
l_f0_3:
    movl    $0, %eax                #   7:     assign t2 <- 0
    movb    %al, -13(%ebp)         
l_f0_4:
    movzbl  -13(%ebp), %eax         #   9:     assign v2 <- t2
    movb    %al, -15(%ebp)         
    call    dummyCHARfunc           #  10:     call   t3 <- dummyCHARfunc
    movb    %al, -14(%ebp)         

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
    #    -13(%ebp)   1  [ $t2       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t3       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $v0       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $v1       <char> %ebp-22 ]

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
    call    dummyCHARfunc           #   0:     call   t2 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    call    WriteLn                 #   1:     call   WriteLn
    movl    $100, %eax              #   2:     if     100 < 97 goto 3_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_3_if_true         
    jmp     l_f1_4_if_false         #   3:     goto   4_if_false
l_f1_3_if_true:
    movl    $93598, %eax            #   5:     if     93598 >= 79998 goto 7
    movl    $79998, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_7                 
    jmp     l_f1_8                  #   6:     goto   8
l_f1_7:
    movl    $1, %eax                #   8:     assign t3 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_9                  #   9:     goto   9
l_f1_8:
    movl    $0, %eax                #  11:     assign t3 <- 0
    movb    %al, -14(%ebp)         
l_f1_9:
    movzbl  -14(%ebp), %eax         #  13:     assign v0 <- t3
    movb    %al, -21(%ebp)         
    jmp     l_f1_13_if_false        #  14:     goto   13_if_false
    jmp     l_f1_11                 #  15:     goto   11
l_f1_13_if_false:
l_f1_11:
    call    dummyINTfunc            #  18:     call   t4 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    movl    $98, %eax               #  19:     assign v1 <- 98
    movb    %al, -22(%ebp)         
    jmp     l_f1_2                  #  20:     goto   2
l_f1_4_if_false:
l_f1_2:

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
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 8 of <array 96 of <array 79 of <array 57 of <array 42 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <char> %ebp+20 ]

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
l_f2_2_while_cond:
    jmp     l_f2_3_while_body       #   2:     goto   3_while_body
    jmp     l_f2_3_while_body       #   3:     goto   3_while_body
    jmp     l_f2_3_while_body       #   4:     goto   3_while_body
    jmp     l_f2_3_while_body       #   5:     goto   3_while_body
l_f2_3_while_body:
    movl    $61899, %eax            #   7:     assign v2 <- 61899
    movl    %eax, 16(%ebp)         
    jmp     l_f2_2_while_cond       #   8:     goto   2_while_cond
l_f2_10_while_cond:
    movl    $38171, %eax            #  10:     if     38171 # 31883 goto 13
    movl    $31883, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f2_13                
    jmp     l_f2_14                 #  11:     goto   14
l_f2_13:
    movl    $1, %eax                #  13:     assign t3 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_15                 #  14:     goto   15
l_f2_14:
    movl    $0, %eax                #  16:     assign t3 <- 0
    movb    %al, -14(%ebp)         
l_f2_15:
    movzbl  -14(%ebp), %eax         #  18:     if     t3 # 0 goto 11_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f2_11_while_body     
    jmp     l_f2_9                  #  19:     goto   9
l_f2_11_while_body:
    movl    $1, %eax                #  21:     if     1 # 1 goto 18
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f2_18                
    jmp     l_f2_19                 #  22:     goto   19
l_f2_18:
    movl    $1, %eax                #  24:     assign t4 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f2_20                 #  25:     goto   20
l_f2_19:
    movl    $0, %eax                #  27:     assign t4 <- 0
    movb    %al, -15(%ebp)         
l_f2_20:
    movzbl  -15(%ebp), %eax         #  29:     assign v1 <- t4
    movb    %al, 12(%ebp)          
    jmp     l_f2_24_if_false        #  30:     goto   24_if_false
    jmp     l_f2_22                 #  31:     goto   22
l_f2_24_if_false:
l_f2_22:
    jmp     l_f2_10_while_cond      #  34:     goto   10_while_cond
l_f2_9:

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
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 7 of <char>>> %ebp-20 ]

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
    movl    $21786, %eax            #   0:     add    t0 <- 21786, 98283
    movl    $98283, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     param  0 <- t0
    pushl   %eax                   
    call    WriteInt                #   2:     call   WriteInt
    addl    $4, %esp               
    leal    _str_1, %eax            #   3:     &()    t1 <- _str_1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   4:     param  0 <- t1
    pushl   %eax                   
    call    WriteStr                #   5:     call   WriteStr
    addl    $4, %esp               
    jmp     l_test_5                #   6:     goto   5
l_test_5:
    jmp     l_test_exit            
    jmp     l_test_2                #   9:     goto   2
l_test_2:

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

    # scope: test
_str_1:                             # <array 7 of <char>>
    .long    1
    .long    7
    .asciz "hello\n"








    # end of global data section
    #-----------------------------------------

    .end
##################################################
