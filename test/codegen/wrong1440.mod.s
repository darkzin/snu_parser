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
    #    -14(%ebp)   1  [ $t1       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t2       <char> %ebp-15 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 27 of <array 42 of <array 25 of <array 12 of <array 78 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 67 of <array 6 of <array 72 of <array 98 of <array 82 of <int>>>>>>> %ebp+16 ]

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
    jmp     l_f0_2_if_true          #   1:     goto   2_if_true
    jmp     l_f0_3_if_false         #   2:     goto   3_if_false
l_f0_2_if_true:
    movl    $100, %eax              #   4:     return 100
    jmp     l_f0_exit              
    call    dummyCHARfunc           #   5:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
l_f0_8_while_cond:
    movl    $32924, %eax            #   7:     if     32924 > 78823 goto 9_while_body
    movl    $78823, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_9_while_body      
    jmp     l_f0_7                  #   8:     goto   7
l_f0_9_while_body:
    jmp     l_f0_8_while_cond       #  10:     goto   8_while_cond
l_f0_7:
    jmp     l_f0_1                  #  12:     goto   1
l_f0_3_if_false:
l_f0_1:
    call    dummyCHARfunc           #  15:     call   t2 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    movzbl  -15(%ebp), %eax         #  16:     return t2
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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t10      <char> %ebp-21 ]
    #    -28(%ebp)   4  [ $t2       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t3       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t4       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t5       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t6       <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t7       <ptr(4) to <array 67 of <array 6 of <array 72 of <array 98 of <array 82 of <int>>>>>>> %ebp-48 ]
    #    -52(%ebp)   4  [ $t8       <ptr(4) to <array 27 of <array 42 of <array 25 of <array 12 of <array 78 of <char>>>>>>> %ebp-52 ]
    #    -53(%ebp)   1  [ $t9       <bool> %ebp-53 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #    -60(%ebp)   4  [ $v1       <int> %ebp-60 ]
    #   -26535684(%ebp)  26535624  [ $v2       <array 27 of <array 42 of <array 25 of <array 12 of <array 78 of <char>>>>>> %ebp-26535684 ]
    #   -956911644(%ebp)  930375960  [ $v3       <array 67 of <array 6 of <array 72 of <array 98 of <array 82 of <int>>>>>> %ebp-956911644 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $956911632, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $239227908, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-26535684(%ebp)      # local array 'v2': 5 dimensions
    movl    $27,-26535680(%ebp)     #   dimension 1: 27 elements
    movl    $42,-26535676(%ebp)     #   dimension 2: 42 elements
    movl    $25,-26535672(%ebp)     #   dimension 3: 25 elements
    movl    $12,-26535668(%ebp)     #   dimension 4: 12 elements
    movl    $78,-26535664(%ebp)     #   dimension 5: 78 elements
    movl    $5,-956911644(%ebp)     # local array 'v3': 5 dimensions
    movl    $67,-956911640(%ebp)    #   dimension 1: 67 elements
    movl    $6,-956911636(%ebp)     #   dimension 2: 6 elements
    movl    $72,-956911632(%ebp)    #   dimension 3: 72 elements
    movl    $98,-956911628(%ebp)    #   dimension 4: 98 elements
    movl    $82,-956911624(%ebp)    #   dimension 5: 82 elements

    # function body
l_f1_1_while_cond:
    movl    $7733, %eax             #   1:     add    t0 <- 7733, 90771
    movl    $90771, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     sub    t1 <- t0, 11382
    movl    $11382, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $45734, %eax            #   3:     add    t2 <- 45734, 57264
    movl    $57264, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -20(%ebp), %eax         #   4:     if     t1 > t2 goto 2_while_body
    movl    -28(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f1_2_while_body      
    jmp     l_f1_0                  #   5:     goto   0
l_f1_2_while_body:
    jmp     l_f1_1_while_cond       #   7:     goto   1_while_cond
l_f1_0:
    movl    $13622, %eax            #   9:     sub    t3 <- 13622, 33836
    movl    $33836, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  10:     add    t4 <- t3, 85531
    movl    $85531, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  11:     sub    t5 <- t4, 12971
    movl    $12971, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  12:     sub    t6 <- t5, 49646
    movl    $49646, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  13:     assign v1 <- t6
    movl    %eax, -60(%ebp)        
    leal    -956911644(%ebp), %eax  #  14:     &()    t7 <- v3
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  15:     param  2 <- t7
    pushl   %eax                   
    leal    -26535684(%ebp), %eax   #  16:     &()    t8 <- v2
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  17:     param  1 <- t8
    pushl   %eax                   
    jmp     l_f1_12                 #  18:     goto   12
l_f1_12:
    jmp     l_f1_6                  #  20:     goto   6
l_f1_6:
    movl    $1, %eax                #  22:     assign t9 <- 1
    movb    %al, -53(%ebp)         
    jmp     l_f1_8                  #  23:     goto   8
    movl    $0, %eax                #  24:     assign t9 <- 0
    movb    %al, -53(%ebp)         
l_f1_8:
    movzbl  -53(%ebp), %eax         #  26:     param  0 <- t9
    pushl   %eax                   
    call    f0                      #  27:     call   t10 <- f0
    addl    $12, %esp              
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #  28:     return t10
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $956911632, %esp        # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 6 of <array 93 of <array 59 of <array 18 of <array 93 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 24 of <array 87 of <array 84 of <array 20 of <array 8 of <int>>>>>>> %ebp+16 ]
    #    -13(%ebp)   1  [ $v3       <char> %ebp-13 ]

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
    movl    $99, %eax               #   1:     assign v3 <- 99
    movb    %al, -13(%ebp)         
    movl    $4338, %eax             #   2:     param  0 <- 4338
    pushl   %eax                   
    call    WriteInt                #   3:     call   WriteInt
    addl    $4, %esp               

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

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body
    jmp     l_test_exit            
    movl    $83417, %eax            #   1:     assign v0 <- 83417
    movl    %eax, v0               
    jmp     l_test_exit            

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
v0:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
