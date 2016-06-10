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
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 13 of <array 16 of <array 77 of <array 3 of <array 45 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 21 of <array 93 of <array 85 of <array 78 of <array 1 of <int>>>>>>> %ebp+12 ]

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
    call    dummyINTfunc            #   0:     call   t2 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    jmp     l_f0_exit              
    call    WriteLn                 #   2:     call   WriteLn

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
    #    -16(%ebp)   4  [ $t2       <ptr(4) to <array 21 of <array 93 of <array 85 of <array 78 of <array 1 of <int>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t3       <ptr(4) to <array 13 of <array 16 of <array 77 of <array 3 of <array 45 of <int>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t4       <char> %ebp-21 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 39 of <array 78 of <array 56 of <array 9 of <array 43 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <char> %ebp+20 ]
    #   -8648688(%ebp)  8648664  [ $v4       <array 13 of <array 16 of <array 77 of <array 3 of <array 45 of <int>>>>>> %ebp-8648688 ]
    #   -60442272(%ebp)  51793584  [ $v5       <array 21 of <array 93 of <array 85 of <array 78 of <array 1 of <int>>>>>> %ebp-60442272 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $60442260, %esp         # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $15110565, %ecx        
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-8648688(%ebp)       # local array 'v4': 5 dimensions
    movl    $13,-8648684(%ebp)      #   dimension 1: 13 elements
    movl    $16,-8648680(%ebp)      #   dimension 2: 16 elements
    movl    $77,-8648676(%ebp)      #   dimension 3: 77 elements
    movl    $3,-8648672(%ebp)       #   dimension 4: 3 elements
    movl    $45,-8648668(%ebp)      #   dimension 5: 45 elements
    movl    $5,-60442272(%ebp)      # local array 'v5': 5 dimensions
    movl    $21,-60442268(%ebp)     #   dimension 1: 21 elements
    movl    $93,-60442264(%ebp)     #   dimension 2: 93 elements
    movl    $85,-60442260(%ebp)     #   dimension 3: 85 elements
    movl    $78,-60442256(%ebp)     #   dimension 4: 78 elements
    movl    $1,-60442252(%ebp)      #   dimension 5: 1 elements

    # function body
    call    WriteLn                 #   0:     call   WriteLn
    leal    -60442272(%ebp), %eax   #   1:     &()    t2 <- v5
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     param  1 <- t2
    pushl   %eax                   
    leal    -8648688(%ebp), %eax    #   3:     &()    t3 <- v4
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   4:     param  0 <- t3
    pushl   %eax                   
    call    f0                      #   5:     call   f0
    addl    $8, %esp               
    call    dummyCHARfunc           #   6:     call   t4 <- dummyCHARfunc
    movb    %al, -21(%ebp)         

l_f1_exit:
    # epilogue
    addl    $60442260, %esp         # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body
    jmp     l_f2_exit              
    movl    $98, %eax               #   1:     if     98 = 99 goto 2_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    je      l_f2_2_if_true         
    jmp     l_f2_3_if_false         #   2:     goto   3_if_false
l_f2_2_if_true:
    jmp     l_f2_5                  #   4:     goto   5
l_f2_5:
    jmp     l_f2_10_if_false        #   6:     goto   10_if_false
    jmp     l_f2_8                  #   7:     goto   8
l_f2_10_if_false:
l_f2_8:
l_f2_12_while_cond:
    jmp     l_f2_12_while_cond      #  11:     goto   12_while_cond
l_f2_15_while_cond:
    jmp     l_f2_15_while_cond      #  13:     goto   15_while_cond
    jmp     l_f2_1                  #  14:     goto   1
l_f2_3_if_false:
l_f2_1:
l_f2_18_while_cond:
    jmp     l_f2_19_while_body      #  18:     goto   19_while_body
    jmp     l_f2_19_while_body      #  19:     goto   19_while_body
    jmp     l_f2_17                 #  20:     goto   17
l_f2_19_while_body:
    jmp     l_f2_18_while_cond      #  22:     goto   18_while_cond
l_f2_17:

l_f2_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
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
l_test_1_while_cond:
    jmp     l_test_0                #   1:     goto   0
l_test_4_while_cond:
    jmp     l_test_5_while_body     #   3:     goto   5_while_body
    jmp     l_test_3                #   4:     goto   3
l_test_5_while_body:
    jmp     l_test_4_while_cond     #   6:     goto   4_while_cond
l_test_3:
    jmp     l_test_1_while_cond     #   8:     goto   1_while_cond
l_test_0:
    movl    $98, %eax               #  10:     assign v0 <- 98
    movb    %al, v0                
    movl    $99, %eax               #  11:     param  0 <- 99
    pushl   %eax                   
    call    WriteChar               #  12:     call   WriteChar
    addl    $4, %esp               
l_test_10_while_cond:
    call    dummyBOOLfunc           #  14:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #  15:     if     t0 = 1 goto 11_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_11_while_body   
    jmp     l_test_9                #  16:     goto   9
l_test_11_while_body:
    call    dummyINTfunc            #  18:     call   t1 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
l_test_14_while_cond:
    jmp     l_test_13               #  20:     goto   13
    jmp     l_test_14_while_cond    #  21:     goto   14_while_cond
l_test_13:
    movl    $1, %eax                #  23:     assign v1 <- 1
    movb    %al, v1                
    jmp     l_test_10_while_cond    #  24:     goto   10_while_cond
l_test_9:

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
v0:                                 # <char>
    .skip    1
v1:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
