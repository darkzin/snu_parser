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
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t2       <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $t3       <char> %ebp-18 ]
    #    -19(%ebp)   1  [ $t4       <bool> %ebp-19 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 1 of <array 8 of <array 5 of <array 3 of <array 7 of <int>>>>>>> %ebp+8 ]
    #    -20(%ebp)   1  [ $v1       <char> %ebp-20 ]
    #    -24(%ebp)   4  [ $v2       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $v3       <bool> %ebp-25 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $16, %esp               # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 12(%esp)         
    movl    %eax, 8(%esp)          
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
    call    dummyINTfunc            #   0:     call   t1 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    jmp     l_f0_4                  #   1:     goto   4
l_f0_4:
    call    dummyCHARfunc           #   3:     call   t2 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    call    dummyCHARfunc           #   4:     call   t3 <- dummyCHARfunc
    movb    %al, -18(%ebp)         
    movzbl  -18(%ebp), %eax         #   5:     param  0 <- t3
    pushl   %eax                   
    call    WriteChar               #   6:     call   WriteChar
    addl    $4, %esp               
    movl    $99, %eax               #   7:     assign v1 <- 99
    movb    %al, -20(%ebp)         
    jmp     l_f0_0                  #   8:     goto   0
l_f0_0:
l_f0_11_while_cond:
    jmp     l_f0_12_while_body      #  11:     goto   12_while_body
    jmp     l_f0_10                 #  12:     goto   10
l_f0_12_while_body:
    movl    $4665, %eax             #  14:     assign v2 <- 4665
    movl    %eax, -24(%ebp)        
    movl    $98, %eax               #  15:     assign v1 <- 98
    movb    %al, -20(%ebp)         
    jmp     l_f0_11_while_cond      #  16:     goto   11_while_cond
l_f0_10:
    jmp     l_f0_22                 #  18:     goto   22
    jmp     l_f0_22                 #  19:     goto   22
    jmp     l_f0_19                 #  20:     goto   19
l_f0_22:
l_f0_19:
    movl    $1, %eax                #  23:     assign t4 <- 1
    movb    %al, -19(%ebp)         
    jmp     l_f0_21                 #  24:     goto   21
    movl    $0, %eax                #  25:     assign t4 <- 0
    movb    %al, -19(%ebp)         
l_f0_21:
    movzbl  -19(%ebp), %eax         #  27:     assign v3 <- t4
    movb    %al, -25(%ebp)         

l_f0_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t1       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $v0       <int> %ebp-24 ]

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
    jmp     l_f1_exit              
    call    dummyBOOLfunc           #   1:     call   t1 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $70596, %eax            #   2:     assign v0 <- 70596
    movl    %eax, -24(%ebp)        
    jmp     l_f1_exit              
    jmp     l_f1_0                  #   4:     goto   0
l_f1_0:
    call    ReadInt                 #   6:     call   t2 <- ReadInt
    movl    %eax, -20(%ebp)        
    jmp     l_f1_exit              

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
    #    -16(%ebp)   4  [ $t1       <ptr(4) to <array 1 of <array 8 of <array 5 of <array 3 of <array 7 of <int>>>>>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t2       <char> %ebp-17 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #   -3404(%ebp)  3384  [ $v1       <array 1 of <array 8 of <array 5 of <array 3 of <array 7 of <int>>>>>> %ebp-3404 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $3392, %esp             # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $848, %ecx             
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-3404(%ebp)          # local array 'v1': 5 dimensions
    movl    $1,-3400(%ebp)          #   dimension 1: 1 elements
    movl    $8,-3396(%ebp)          #   dimension 2: 8 elements
    movl    $5,-3392(%ebp)          #   dimension 3: 5 elements
    movl    $3,-3388(%ebp)          #   dimension 4: 3 elements
    movl    $7,-3384(%ebp)          #   dimension 5: 7 elements

    # function body
    call    dummyProcedure          #   0:     call   dummyProcedure
    movl    $97, %eax               #   1:     assign v0 <- 97
    movb    %al, 8(%ebp)           
    leal    -3404(%ebp), %eax       #   2:     &()    t1 <- v1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   3:     param  0 <- t1
    pushl   %eax                   
    call    f0                      #   4:     call   t2 <- f0
    addl    $4, %esp               
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #   5:     return t2
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $3392, %esp             # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]

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
    movl    $97, %eax               #   0:     if     97 = 98 goto 4_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    je      l_test_4_if_true       
    jmp     l_test_5_if_false       #   1:     goto   5_if_false
l_test_4_if_true:
    jmp     l_test_3                #   3:     goto   3
l_test_5_if_false:
l_test_3:
    jmp     l_test_exit            
    jmp     l_test_0                #   7:     goto   0
l_test_0:
l_test_12_while_cond:
    movl    $11001, %eax            #  10:     if     11001 = 34154 goto 13_while_body
    movl    $34154, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_13_while_body   
    jmp     l_test_11               #  11:     goto   11
l_test_13_while_body:
    jmp     l_test_12_while_cond    #  13:     goto   12_while_cond
l_test_11:
    jmp     l_test_8                #  15:     goto   8
l_test_8:
    movl    $84346, %eax            #  17:     if     84346 > 55109 goto 16_if_true
    movl    $55109, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_16_if_true      
    jmp     l_test_17_if_false      #  18:     goto   17_if_false
l_test_16_if_true:
    call    dummyINTfunc            #  20:     call   t0 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    jmp     l_test_15               #  21:     goto   15
l_test_17_if_false:
l_test_15:

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









    # end of global data section
    #-----------------------------------------

    .end
##################################################
