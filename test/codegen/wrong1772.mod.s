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
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 69 of <array 73 of <array 85 of <array 93 of <array 98 of <char>>>>>>> %ebp+16 ]

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
    movl    $97, %eax               #   0:     assign v0 <- 97
    movb    %al, 8(%ebp)           
l_f0_2_while_cond:
    jmp     l_f0_3_while_body       #   2:     goto   3_while_body
l_f0_3_while_body:
    call    ReadInt                 #   4:     call   t2 <- ReadInt
    movl    %eax, -16(%ebp)        
    jmp     l_f0_2_while_cond       #   5:     goto   2_while_cond
l_f0_8_while_cond:
    movl    $97, %eax               #   7:     if     97 < 98 goto 9_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f0_9_while_body      
    jmp     l_f0_7                  #   8:     goto   7
l_f0_9_while_body:
    jmp     l_f0_exit              
    movl    $1, %eax                #  11:     assign v1 <- 1
    movb    %al, 12(%ebp)          
    movl    $100, %eax              #  12:     assign v0 <- 100
    movb    %al, 8(%ebp)           
    jmp     l_f0_8_while_cond       #  13:     goto   8_while_cond
l_f0_7:

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
    #    -16(%ebp)   4  [ $t2       <ptr(4) to <array 7 of <char>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t3       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t4       <bool> %ebp-18 ]
    #    -19(%ebp)   1  [ $t5       <bool> %ebp-19 ]
    #    -20(%ebp)   1  [ $v0       <bool> %ebp-20 ]

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
    leal    _str_1, %eax            #   0:     &()    t2 <- _str_1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     param  0 <- t2
    pushl   %eax                   
    call    WriteStr                #   2:     call   WriteStr
    addl    $4, %esp               
    call    dummyBOOLfunc           #   3:     call   t3 <- dummyBOOLfunc
    movb    %al, -17(%ebp)         
    call    dummyBOOLfunc           #   4:     call   t4 <- dummyBOOLfunc
    movb    %al, -18(%ebp)         
    movzbl  -18(%ebp), %eax         #   5:     if     t4 = 1 goto 3
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_3                 
l_f1_3:
    movl    $1, %eax                #   7:     assign t5 <- 1
    movb    %al, -19(%ebp)         
    jmp     l_f1_5                  #   8:     goto   5
    movl    $0, %eax                #   9:     assign t5 <- 0
    movb    %al, -19(%ebp)         
l_f1_5:
    movzbl  -19(%ebp), %eax         #  11:     assign v0 <- t5
    movb    %al, -20(%ebp)         

l_f1_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t2       <ptr(4) to <array 69 of <array 73 of <array 85 of <array 93 of <array 98 of <char>>>>>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t3       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t4       <char> %ebp-18 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $v0       <char> %ebp-25 ]
    #   392853712(%ebp)  -392853742  [ $v1       <array 69 of <array 73 of <array 85 of <array 93 of <array 98 of <char>>>>>> %ebp+392853712 ]
    #   392853708(%ebp)   4  [ $v2       <int> %ebp+392853708 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $-392853720, %esp       # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $-98213430, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,392853712(%ebp)      # local array 'v1': 5 dimensions
    movl    $69,392853716(%ebp)     #   dimension 1: 69 elements
    movl    $73,392853720(%ebp)     #   dimension 2: 73 elements
    movl    $85,392853724(%ebp)     #   dimension 3: 85 elements
    movl    $93,392853728(%ebp)     #   dimension 4: 93 elements
    movl    $98,392853732(%ebp)     #   dimension 5: 98 elements

    # function body
    movl    $97, %eax               #   0:     assign v0 <- 97
    movb    %al, -25(%ebp)         
    leal    392853712(%ebp), %eax   #   1:     &()    t2 <- v1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     param  2 <- t2
    pushl   %eax                   
    jmp     l_f2_2                  #   3:     goto   2
    jmp     l_f2_3                  #   4:     goto   3
l_f2_2:
    movl    $1, %eax                #   6:     assign t3 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f2_4                  #   7:     goto   4
l_f2_3:
    movl    $0, %eax                #   9:     assign t3 <- 0
    movb    %al, -17(%ebp)         
l_f2_4:
    movzbl  -17(%ebp), %eax         #  11:     param  1 <- t3
    pushl   %eax                   
    call    dummyCHARfunc           #  12:     call   t4 <- dummyCHARfunc
    movb    %al, -18(%ebp)         
    movzbl  -18(%ebp), %eax         #  13:     param  0 <- t4
    pushl   %eax                   
    call    f0                      #  14:     call   f0
    addl    $12, %esp              
    movl    $76095, %eax            #  15:     div    t5 <- 76095, 95514
    movl    $95514, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  16:     assign v2 <- t5
    movl    %eax, 392853708(%ebp)  

l_f2_exit:
    # epilogue
    addl    $-392853720, %esp       # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <char> %ebp-17 ]

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
    call    f1                      #   0:     call   t0 <- f1
    movl    %eax, -16(%ebp)        
    jmp     l_test_exit            
    call    dummyCHARfunc           #   2:     call   t1 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #   3:     if     t1 >= 98 goto 3_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_3_if_true       
    jmp     l_test_4_if_false       #   4:     goto   4_if_false
l_test_3_if_true:
    jmp     l_test_8_if_false       #   6:     goto   8_if_false
    jmp     l_test_6                #   7:     goto   6
l_test_8_if_false:
l_test_6:
    jmp     l_test_11_if_false      #  10:     goto   11_if_false
    jmp     l_test_9                #  11:     goto   9
l_test_11_if_false:
l_test_9:
    jmp     l_test_2                #  14:     goto   2
l_test_4_if_false:
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
