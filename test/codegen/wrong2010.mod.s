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
    #    -13(%ebp)   1  [ $t3       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t5       <char> %ebp-15 ]
    #    -16(%ebp)   1  [ $t6       <bool> %ebp-16 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 70 of <array 17 of <array 3 of <array 90 of <array 41 of <bool>>>>>>> %ebp+8 ]
    #    -17(%ebp)   1  [ $v1       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $v2       <char> %ebp-18 ]

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
    call    dummyCHARfunc           #   0:     call   t3 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $100, %eax              #   1:     if     100 <= t3 goto 1
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f0_1                 
    jmp     l_f0_2                  #   2:     goto   2
l_f0_1:
    movl    $1, %eax                #   4:     assign t4 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f0_3                  #   5:     goto   3
l_f0_2:
    movl    $0, %eax                #   7:     assign t4 <- 0
    movb    %al, -14(%ebp)         
l_f0_3:
    movzbl  -14(%ebp), %eax         #   9:     assign v1 <- t4
    movb    %al, -17(%ebp)         
    call    dummyCHARfunc           #  10:     call   t5 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    movzbl  -15(%ebp), %eax         #  11:     assign v2 <- t5
    movb    %al, -18(%ebp)         
    call    dummyBOOLfunc           #  12:     call   t6 <- dummyBOOLfunc
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
    #    -16(%ebp)   4  [ $t3       <ptr(4) to <array 70 of <array 17 of <array 3 of <array 90 of <array 41 of <bool>>>>>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t4       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t5       <bool> %ebp-18 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 37 of <array 10 of <array 57 of <array 96 of <array 21 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 37 of <array 93 of <array 43 of <array 58 of <array 13 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <char> %ebp+20 ]
    #   -13173344(%ebp)  13173324  [ $v4       <array 70 of <array 17 of <array 3 of <array 90 of <array 41 of <bool>>>>>> %ebp-13173344 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $13173332, %esp         # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $3293333, %ecx         
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-13173344(%ebp)      # local array 'v4': 5 dimensions
    movl    $70,-13173340(%ebp)     #   dimension 1: 70 elements
    movl    $17,-13173336(%ebp)     #   dimension 2: 17 elements
    movl    $3,-13173332(%ebp)      #   dimension 3: 3 elements
    movl    $90,-13173328(%ebp)     #   dimension 4: 90 elements
    movl    $41,-13173324(%ebp)     #   dimension 5: 41 elements

    # function body
    leal    -13173344(%ebp), %eax   #   0:     &()    t3 <- v4
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     param  0 <- t3
    pushl   %eax                   
    call    f0                      #   2:     call   t4 <- f0
    addl    $4, %esp               
    movb    %al, -17(%ebp)         
    jmp     l_f1_3                  #   3:     goto   3
    jmp     l_f1_3                  #   4:     goto   3
    movl    $1, %eax                #   5:     assign t5 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_f1_4                  #   6:     goto   4
l_f1_3:
    movl    $0, %eax                #   8:     assign t5 <- 0
    movb    %al, -18(%ebp)         
l_f1_4:
    movzbl  -18(%ebp), %eax         #  10:     return t5
    jmp     l_f1_exit              
    call    WriteLn                 #  11:     call   WriteLn

l_f1_exit:
    # epilogue
    addl    $13173332, %esp         # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t3       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #    -24(%ebp)   4  [ $v1       <int> %ebp-24 ]

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
    call    dummyBOOLfunc           #   0:     call   t3 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $54566, %eax            #   1:     assign v1 <- 54566
    movl    %eax, -24(%ebp)        
    call    ReadInt                 #   2:     call   t4 <- ReadInt
    movl    %eax, -20(%ebp)        

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
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 70 of <array 17 of <array 3 of <array 90 of <array 41 of <bool>>>>>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <bool> %ebp-17 ]
    #    -24(%ebp)   4  [ $t2       <ptr(4) to <array 7 of <char>>> %ebp-24 ]

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
    leal    v1, %eax                #   0:     &()    t0 <- v1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     param  0 <- t0
    pushl   %eax                   
    call    f0                      #   2:     call   t1 <- f0
    addl    $4, %esp               
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #   3:     assign v0 <- t1
    movb    %al, v0                
l_test_2_while_cond:
    jmp     l_test_1                #   5:     goto   1
    movl    $89845, %eax            #   6:     if     89845 >= 81456 goto 3_while_body
    movl    $81456, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_3_while_body    
    jmp     l_test_1                #   7:     goto   1
l_test_3_while_body:
    jmp     l_test_2_while_cond     #   9:     goto   2_while_cond
l_test_1:
l_test_7_while_cond:
    leal    _str_1, %eax            #  12:     &()    t2 <- _str_1
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  13:     param  0 <- t2
    pushl   %eax                   
    call    WriteStr                #  14:     call   WriteStr
    addl    $4, %esp               
    jmp     l_test_12_if_false      #  15:     goto   12_if_false
    jmp     l_test_10               #  16:     goto   10
l_test_12_if_false:
l_test_10:
    movl    $1, %eax                #  19:     assign v0 <- 1
    movb    %al, v0                
    jmp     l_test_7_while_cond     #  20:     goto   7_while_cond

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
_str_1:                             # <array 7 of <char>>
    .long    1
    .long    7
    .asciz "hello\n"
v0:                                 # <bool>
    .skip    1
v1:                                 # <array 70 of <array 17 of <array 3 of <array 90 of <array 41 of <bool>>>>>>
    .long    5
    .long   70
    .long   17
    .long    3
    .long   90
    .long   41
    .skip 13173300








    # end of global data section
    #-----------------------------------------

    .end
##################################################
