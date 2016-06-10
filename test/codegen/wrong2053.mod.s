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
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 41 of <array 52 of <array 94 of <array 58 of <array 30 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <int> %ebp+12 ]
    #    -15(%ebp)   1  [ $v3       <char> %ebp-15 ]

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
    call    dummyBOOLfunc           #   0:     call   t2 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $98, %eax               #   1:     assign v3 <- 98
    movb    %al, -15(%ebp)         
    call    dummyCHARfunc           #   2:     call   t3 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   3:     return t3
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
    #    -13(%ebp)   1  [ $t2       <char> %ebp-13 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 73 of <array 38 of <array 66 of <array 85 of <array 98 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 84 of <array 15 of <array 47 of <array 41 of <array 18 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 25 of <array 84 of <array 84 of <array 73 of <array 14 of <bool>>>>>>> %ebp+16 ]
    #    -14(%ebp)   1  [ $v4       <char> %ebp-14 ]

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
    jmp     l_f1_2_if_false         #   0:     goto   2_if_false
l_f1_4_while_cond:
    movl    $99, %eax               #   2:     if     99 <= 98 goto 5_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f1_5_while_body      
    jmp     l_f1_3                  #   3:     goto   3
l_f1_5_while_body:
    jmp     l_f1_4_while_cond       #   5:     goto   4_while_cond
l_f1_3:
    jmp     l_f1_9_if_false         #   7:     goto   9_if_false
    jmp     l_f1_7                  #   8:     goto   7
l_f1_9_if_false:
l_f1_7:
    jmp     l_f1_0                  #  11:     goto   0
l_f1_2_if_false:
l_f1_0:
    movl    $98, %eax               #  14:     assign v4 <- 98
    movb    %al, -14(%ebp)         
    call    dummyCHARfunc           #  15:     call   t2 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #  16:     return t2
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
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 19 of <array 34 of <array 20 of <array 76 of <array 33 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v4       <char> %ebp+20 ]
    #    -17(%ebp)   1  [ $v5       <bool> %ebp-17 ]

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
    jmp     l_f2_exit              
    call    ReadInt                 #   1:     call   t2 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    $24240, %eax            #   2:     if     24240 < 36951 goto 3_if_true
    movl    $36951, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_3_if_true         
    jmp     l_f2_4_if_false         #   3:     goto   4_if_false
l_f2_3_if_true:
    movl    $100, %eax              #   5:     param  0 <- 100
    pushl   %eax                   
    call    WriteChar               #   6:     call   WriteChar
    addl    $4, %esp               
l_f2_8_while_cond:
    movl    $99, %eax               #   8:     if     99 < 99 goto 9_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f2_9_while_body      
    jmp     l_f2_7                  #   9:     goto   7
l_f2_9_while_body:
    jmp     l_f2_8_while_cond       #  11:     goto   8_while_cond
l_f2_7:
    movl    $0, %eax                #  13:     assign v5 <- 0
    movb    %al, -17(%ebp)         
    jmp     l_f2_14_if_false        #  14:     goto   14_if_false
    jmp     l_f2_12                 #  15:     goto   12
l_f2_14_if_false:
l_f2_12:
    jmp     l_f2_exit              
    jmp     l_f2_2                  #  19:     goto   2
l_f2_4_if_false:
l_f2_2:

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
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]

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
    movl    $4665, %eax             #   0:     assign v0 <- 4665
    movl    %eax, v0               
l_test_2_while_cond:
    call    dummyBOOLfunc           #   2:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   3:     if     t0 = 1 goto 3_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_3_while_body    
    jmp     l_test_1                #   4:     goto   1
l_test_3_while_body:
    jmp     l_test_4                #   6:     goto   4
l_test_4:
    jmp     l_test_2_while_cond     #   8:     goto   2_while_cond
l_test_1:
    jmp     l_test_exit            
    movl    $31071, %eax            #  11:     if     31071 <= 85157 goto 9
    movl    $85157, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_9               
    jmp     l_test_10               #  12:     goto   10
l_test_9:
    movl    $1, %eax                #  14:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_test_11               #  15:     goto   11
l_test_10:
    movl    $0, %eax                #  17:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_test_11:
    movzbl  -14(%ebp), %eax         #  19:     assign v1 <- t1
    movb    %al, v1                
    movl    $99, %eax               #  20:     assign v2 <- 99
    movb    %al, v2                
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
v0:                                 # <int>
    .skip    4
v1:                                 # <bool>
    .skip    1
v2:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
