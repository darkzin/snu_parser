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
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
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
    call    dummyCHARfunc           #   0:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    call    dummyBOOLfunc           #   1:     call   t1 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    movl    $17603, %eax            #   2:     assign v0 <- 17603
    movl    %eax, -20(%ebp)        

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
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t2       <bool> %ebp-15 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 29 of <array 78 of <array 59 of <array 35 of <array 25 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]

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
    call    dummyCHARfunc           #   0:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     if     t0 < 98 goto 1
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_1                 
    jmp     l_f1_2                  #   2:     goto   2
l_f1_1:
    movl    $1, %eax                #   4:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_3                  #   5:     goto   3
l_f1_2:
    movl    $0, %eax                #   7:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_f1_3:
    movzbl  -14(%ebp), %eax         #   9:     return t1
    jmp     l_f1_exit              
    call    dummyBOOLfunc           #  10:     call   t2 <- dummyBOOLfunc
    movb    %al, -15(%ebp)         
    movl    $98, %eax               #  11:     assign v1 <- 98
    movb    %al, 12(%ebp)          

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
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 29 of <array 78 of <array 59 of <array 35 of <array 25 of <char>>>>>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t2       <bool> %ebp-18 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <int> %ebp+20 ]
    #    -19(%ebp)   1  [ $v4       <char> %ebp-19 ]
    #   -116775796(%ebp)  116775774  [ $v5       <array 29 of <array 78 of <array 59 of <array 35 of <array 25 of <char>>>>>> %ebp-116775796 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $116775784, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $29193946, %ecx        
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-116775796(%ebp)     # local array 'v5': 5 dimensions
    movl    $29,-116775792(%ebp)    #   dimension 1: 29 elements
    movl    $78,-116775788(%ebp)    #   dimension 2: 78 elements
    movl    $59,-116775784(%ebp)    #   dimension 3: 59 elements
    movl    $35,-116775780(%ebp)    #   dimension 4: 35 elements
    movl    $25,-116775776(%ebp)    #   dimension 5: 25 elements

    # function body
    movl    $98, %eax               #   0:     assign v4 <- 98
    movb    %al, -19(%ebp)         
l_f2_5_while_cond:
    movl    $97, %eax               #   2:     if     97 > 99 goto 6_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f2_6_while_body      
    jmp     l_f2_4                  #   3:     goto   4
l_f2_6_while_body:
    jmp     l_f2_5_while_cond       #   5:     goto   5_while_cond
l_f2_4:
    jmp     l_f2_0                  #   7:     goto   0
l_f2_0:
    movl    $98, %eax               #   9:     param  1 <- 98
    pushl   %eax                   
    leal    -116775796(%ebp), %eax  #  10:     &()    t0 <- v5
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  11:     param  0 <- t0
    pushl   %eax                   
    call    f1                      #  12:     call   t1 <- f1
    addl    $8, %esp               
    movb    %al, -17(%ebp)         
    call    dummyBOOLfunc           #  13:     call   t2 <- dummyBOOLfunc
    movb    %al, -18(%ebp)         

l_f2_exit:
    # epilogue
    addl    $116775784, %esp        # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body
    jmp     l_test_1_if_true        #   0:     goto   1_if_true
l_test_1_if_true:
l_test_5_while_cond:
    jmp     l_test_4                #   3:     goto   4
    jmp     l_test_5_while_cond     #   4:     goto   5_while_cond
l_test_4:
    jmp     l_test_0                #   6:     goto   0
l_test_0:
    jmp     l_test_exit            
    movl    $1, %eax                #   9:     assign v0 <- 1
    movb    %al, v0                
l_test_10_while_cond:
    jmp     l_test_exit            
    jmp     l_test_13               #  12:     goto   13
l_test_13:
    jmp     l_test_10_while_cond    #  14:     goto   10_while_cond

l_test_exit:
    # epilogue
    addl    $0, %esp                # remove locals
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
