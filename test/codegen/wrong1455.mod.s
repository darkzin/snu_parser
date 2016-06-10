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
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 19 of <array 61 of <array 25 of <array 67 of <array 84 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 97 of <array 98 of <array 30 of <array 85 of <array 74 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <int> %ebp+20 ]
    #    -14(%ebp)   1  [ $v4       <bool> %ebp-14 ]

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
    movzbl  -13(%ebp), %eax         #   1:     param  0 <- t0
    pushl   %eax                   
    call    WriteChar               #   2:     call   WriteChar
    addl    $4, %esp               
    movl    $98, %eax               #   3:     assign v2 <- 98
    movb    %al, 16(%ebp)          
    movl    $0, %eax                #   4:     if     0 = 1 goto 3_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_3_if_true         
    jmp     l_f0_4_if_false         #   5:     goto   4_if_false
l_f0_3_if_true:
    call    WriteLn                 #   7:     call   WriteLn
    jmp     l_f0_7                  #   8:     goto   7
l_f0_7:
    movl    $0, %eax                #  10:     assign v4 <- 0
    movb    %al, -14(%ebp)         
l_f0_12_while_cond:
    movl    $3483, %eax             #  12:     if     3483 > 35449 goto 13_while_body
    movl    $35449, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_13_while_body     
    jmp     l_f0_11                 #  13:     goto   11
l_f0_13_while_body:
    jmp     l_f0_12_while_cond      #  15:     goto   12_while_cond
l_f0_11:
l_f0_16_while_cond:
    jmp     l_f0_15                 #  18:     goto   15
    jmp     l_f0_16_while_cond      #  19:     goto   16_while_cond
l_f0_15:
    jmp     l_f0_2                  #  21:     goto   2
l_f0_4_if_false:
l_f0_2:

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
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <char> %ebp-14 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 58 of <array 10 of <array 73 of <array 62 of <array 40 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #    -15(%ebp)   1  [ $v2       <char> %ebp-15 ]

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
    movl    $99, %eax               #   1:     assign v2 <- 99
    movb    %al, -15(%ebp)         
    call    dummyCHARfunc           #   2:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   3:     assign v2 <- t1
    movb    %al, -15(%ebp)         

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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 5 of <char>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <ptr(4) to <array 97 of <array 98 of <array 30 of <array 85 of <array 74 of <int>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <ptr(4) to <array 19 of <array 61 of <array 25 of <array 67 of <array 84 of <char>>>>>>> %ebp-28 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 68 of <array 58 of <array 62 of <array 67 of <array 74 of <int>>>>>>> %ebp+8 ]
    #   -163071352(%ebp)  163071324  [ $v1       <array 19 of <array 61 of <array 25 of <array 67 of <array 84 of <char>>>>>> %ebp-163071352 ]
    #   1251734416(%ebp)  -1414805768  [ $v2       <array 97 of <array 98 of <array 30 of <array 85 of <array 74 of <int>>>>>> %ebp+1251734416 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $-1251734428, %esp      # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $-312933607, %ecx      
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-163071352(%ebp)     # local array 'v1': 5 dimensions
    movl    $19,-163071348(%ebp)    #   dimension 1: 19 elements
    movl    $61,-163071344(%ebp)    #   dimension 2: 61 elements
    movl    $25,-163071340(%ebp)    #   dimension 3: 25 elements
    movl    $67,-163071336(%ebp)    #   dimension 4: 67 elements
    movl    $84,-163071332(%ebp)    #   dimension 5: 84 elements
    movl    $5,1251734416(%ebp)     # local array 'v2': 5 dimensions
    movl    $97,1251734420(%ebp)    #   dimension 1: 97 elements
    movl    $98,1251734424(%ebp)    #   dimension 2: 98 elements
    movl    $30,1251734428(%ebp)    #   dimension 3: 30 elements
    movl    $85,1251734432(%ebp)    #   dimension 4: 85 elements
    movl    $74,1251734436(%ebp)    #   dimension 5: 74 elements

    # function body
    call    ReadInt                 #   0:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
    leal    _str_1, %eax            #   1:     &()    t1 <- _str_1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     param  0 <- t1
    pushl   %eax                   
    call    WriteStr                #   3:     call   WriteStr
    addl    $4, %esp               
    jmp     l_f2_4_if_false         #   4:     goto   4_if_false
    movl    $98, %eax               #   5:     if     98 < 98 goto 6_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f2_6_if_true         
    jmp     l_f2_7_if_false         #   6:     goto   7_if_false
l_f2_6_if_true:
    jmp     l_f2_5                  #   8:     goto   5
l_f2_7_if_false:
l_f2_5:
    movl    $7004, %eax             #  11:     param  3 <- 7004
    pushl   %eax                   
    movl    $97, %eax               #  12:     param  2 <- 97
    pushl   %eax                   
    leal    1251734416(%ebp), %eax  #  13:     &()    t2 <- v2
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  14:     param  1 <- t2
    pushl   %eax                   
    leal    -163071352(%ebp), %eax  #  15:     &()    t3 <- v1
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  16:     param  0 <- t3
    pushl   %eax                   
    call    f0                      #  17:     call   f0
    addl    $16, %esp              
    jmp     l_f2_2                  #  18:     goto   2
l_f2_4_if_false:
l_f2_2:

l_f2_exit:
    # epilogue
    addl    $-1251734428, %esp      # remove locals
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
    jmp     l_test_exit            
l_test_2_while_cond:
    movl    $59421, %eax            #   2:     if     59421 > 93487 goto 3_while_body
    movl    $93487, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_3_while_body    
    jmp     l_test_1                #   3:     goto   1
l_test_3_while_body:
    jmp     l_test_exit            
    jmp     l_test_2_while_cond     #   6:     goto   2_while_cond
l_test_1:
    movl    $61693, %eax            #   8:     assign v0 <- 61693
    movl    %eax, v0               

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
_str_1:                             # <array 5 of <char>>
    .long    1
    .long    5
    .asciz "bye\n"
    .align   4
v0:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
