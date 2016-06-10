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
    #    -14(%ebp)   1  [ $t3       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t4       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $t5       <bool> %ebp-16 ]
    #    -17(%ebp)   1  [ $v1       <bool> %ebp-17 ]

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
    call    dummyBOOLfunc           #   0:     call   t2 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     if     t2 = 1 goto 5
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_5                 
    jmp     l_f0_2                  #   2:     goto   2
l_f0_5:
    jmp     l_f0_2                  #   4:     goto   2
    jmp     l_f0_2                  #   5:     goto   2
    movl    $1, %eax                #   6:     assign t3 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f0_3                  #   7:     goto   3
l_f0_2:
    movl    $0, %eax                #   9:     assign t3 <- 0
    movb    %al, -14(%ebp)         
l_f0_3:
    movzbl  -14(%ebp), %eax         #  11:     assign v1 <- t3
    movb    %al, -17(%ebp)         
    call    dummyBOOLfunc           #  12:     call   t4 <- dummyBOOLfunc
    movb    %al, -15(%ebp)         
    call    dummyBOOLfunc           #  13:     call   t5 <- dummyBOOLfunc
    movb    %al, -16(%ebp)         

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
    #    -13(%ebp)   1  [ $t2       <char> %ebp-13 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 95 of <array 20 of <array 18 of <array 57 of <array 27 of <char>>>>>>> %ebp+12 ]
    #    -14(%ebp)   1  [ $v3       <char> %ebp-14 ]

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
    call    WriteLn                 #   0:     call   WriteLn
l_f1_2_while_cond:
    jmp     l_f1_1                  #   2:     goto   1
l_f1_6_while_cond:
    jmp     l_f1_5                  #   4:     goto   5
    jmp     l_f1_6_while_cond       #   5:     goto   6_while_cond
l_f1_5:
    jmp     l_f1_2_while_cond       #   7:     goto   2_while_cond
l_f1_1:
    call    dummyCHARfunc           #   9:     call   t2 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #  10:     assign v3 <- t2
    movb    %al, -14(%ebp)         

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
    #    -17(%ebp)   1  [ $t3       <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $t4       <char> %ebp-18 ]
    #    -19(%ebp)   1  [ $t5       <bool> %ebp-19 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]

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
    jmp     l_f2_2_if_false         #   0:     goto   2_if_false
    call    ReadInt                 #   1:     call   t2 <- ReadInt
    movl    %eax, -16(%ebp)        
    call    dummyCHARfunc           #   2:     call   t3 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    jmp     l_f2_5                  #   3:     goto   5
l_f2_5:
l_f2_9_while_cond:
    jmp     l_f2_8                  #   6:     goto   8
    jmp     l_f2_9_while_cond       #   7:     goto   9_while_cond
l_f2_8:
    jmp     l_f2_0                  #   9:     goto   0
l_f2_2_if_false:
l_f2_0:
    call    dummyCHARfunc           #  12:     call   t4 <- dummyCHARfunc
    movb    %al, -18(%ebp)         
    call    dummyBOOLfunc           #  13:     call   t5 <- dummyBOOLfunc
    movb    %al, -19(%ebp)         
    movzbl  -19(%ebp), %eax         #  14:     return t5
    jmp     l_f2_exit              

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
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]

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
    jmp     l_test_exit            
    jmp     l_test_0                #   1:     goto   0
l_test_0:
    movl    $51875, %eax            #   3:     assign v0 <- 51875
    movl    %eax, v0               
    call    dummyINTfunc            #   4:     call   t0 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    jmp     l_test_exit            
l_test_8_while_cond:
    movl    $34898, %eax            #   7:     sub    t1 <- 34898, 38099
    movl    $38099, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   8:     if     t1 = 31158 goto 9_while_body
    movl    $31158, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_9_while_body    
    jmp     l_test_7                #   9:     goto   7
l_test_9_while_body:
    movl    $99, %eax               #  11:     assign v1 <- 99
    movb    %al, v1                
    jmp     l_test_8_while_cond     #  12:     goto   8_while_cond
l_test_7:

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
v0:                                 # <int>
    .skip    4
v1:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
