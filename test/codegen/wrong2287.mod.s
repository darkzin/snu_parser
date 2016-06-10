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
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 68 of <array 1 of <array 8 of <array 7 of <array 67 of <char>>>>>>> %ebp+16 ]

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
    movl    $5288, %eax             #   0:     assign v0 <- 5288
    movl    %eax, 8(%ebp)          
l_f0_2_while_cond:
    call    dummyBOOLfunc           #   2:     call   t2 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   3:     if     t2 = 1 goto 4
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_4                 
    jmp     l_f0_1                  #   4:     goto   1
l_f0_4:
    jmp     l_f0_1                  #   6:     goto   1
    jmp     l_f0_2_while_cond       #   7:     goto   2_while_cond
l_f0_1:
    jmp     l_f0_7                  #   9:     goto   7
    movl    $1, %eax                #  10:     assign t3 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f0_8                  #  11:     goto   8
l_f0_7:
    movl    $0, %eax                #  13:     assign t3 <- 0
    movb    %al, -14(%ebp)         
l_f0_8:
    movzbl  -14(%ebp), %eax         #  15:     return t3
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
    #    -20(%ebp)   4  [ $t3       <ptr(4) to <array 68 of <array 1 of <array 8 of <array 7 of <array 67 of <char>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t5       <bool> %ebp-25 ]
    #    -32(%ebp)   4  [ $t6       <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $t7       <char> %ebp-33 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 71 of <array 61 of <array 46 of <array 85 of <array 12 of <char>>>>>>> %ebp+8 ]
    #   -255196(%ebp)  255160  [ $v1       <array 68 of <array 1 of <array 8 of <array 7 of <array 67 of <char>>>>>> %ebp-255196 ]
    #   -255197(%ebp)   1  [ $v2       <char> %ebp-255197 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $255188, %esp           # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $63797, %ecx           
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-255196(%ebp)        # local array 'v1': 5 dimensions
    movl    $68,-255192(%ebp)       #   dimension 1: 68 elements
    movl    $1,-255188(%ebp)        #   dimension 2: 1 elements
    movl    $8,-255184(%ebp)        #   dimension 3: 8 elements
    movl    $7,-255180(%ebp)        #   dimension 4: 7 elements
    movl    $67,-255176(%ebp)       #   dimension 5: 67 elements

    # function body
    jmp     l_f1_exit              
    call    dummyCHARfunc           #   1:     call   t2 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    leal    -255196(%ebp), %eax     #   2:     &()    t3 <- v1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     param  2 <- t3
    pushl   %eax                   
    movl    $1, %eax                #   4:     param  1 <- 1
    pushl   %eax                   
    movl    $60990, %eax            #   5:     div    t4 <- 60990, 99152
    movl    $99152, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   6:     param  0 <- t4
    pushl   %eax                   
    call    f0                      #   7:     call   t5 <- f0
    addl    $12, %esp              
    movb    %al, -25(%ebp)         
    jmp     l_f1_0                  #   8:     goto   0
l_f1_0:
    call    ReadInt                 #  10:     call   t6 <- ReadInt
    movl    %eax, -32(%ebp)        
    call    dummyCHARfunc           #  11:     call   t7 <- dummyCHARfunc
    movb    %al, -33(%ebp)         
    movzbl  -33(%ebp), %eax         #  12:     assign v2 <- t7
    movb    %al, -255197(%ebp)     

l_f1_exit:
    # epilogue
    addl    $255188, %esp           # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t2       <ptr(4) to <array 68 of <array 1 of <array 8 of <array 7 of <array 67 of <char>>>>>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t3       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t4       <bool> %ebp-18 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 10 of <array 12 of <array 15 of <array 13 of <array 98 of <char>>>>>>> %ebp+8 ]
    #   -255180(%ebp)  255160  [ $v1       <array 68 of <array 1 of <array 8 of <array 7 of <array 67 of <char>>>>>> %ebp-255180 ]
    #   -255181(%ebp)   1  [ $v2       <bool> %ebp-255181 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $255172, %esp           # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $63793, %ecx           
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-255180(%ebp)        # local array 'v1': 5 dimensions
    movl    $68,-255176(%ebp)       #   dimension 1: 68 elements
    movl    $1,-255172(%ebp)        #   dimension 2: 1 elements
    movl    $8,-255168(%ebp)        #   dimension 3: 8 elements
    movl    $7,-255164(%ebp)        #   dimension 4: 7 elements
    movl    $67,-255160(%ebp)       #   dimension 5: 67 elements

    # function body
l_f2_1_while_cond:
    leal    -255180(%ebp), %eax     #   1:     &()    t2 <- v1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     param  2 <- t2
    pushl   %eax                   
    movl    $0, %eax                #   3:     param  1 <- 0
    pushl   %eax                   
    movl    $33209, %eax            #   4:     param  0 <- 33209
    pushl   %eax                   
    call    f0                      #   5:     call   t3 <- f0
    addl    $12, %esp              
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #   6:     if     t3 = 1 goto 2_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_2_while_body      
    jmp     l_f2_0                  #   7:     goto   0
l_f2_2_while_body:
    jmp     l_f2_1_while_cond       #   9:     goto   1_while_cond
l_f2_0:
    jmp     l_f2_6_if_false         #  11:     goto   6_if_false
    jmp     l_f2_6_if_false         #  12:     goto   6_if_false
    jmp     l_f2_4                  #  13:     goto   4
l_f2_6_if_false:
l_f2_4:
    movl    $99, %eax               #  16:     if     99 >= 99 goto 9
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_9                 
    jmp     l_f2_10                 #  17:     goto   10
l_f2_9:
    movl    $1, %eax                #  19:     assign t4 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_f2_11                 #  20:     goto   11
l_f2_10:
    movl    $0, %eax                #  22:     assign t4 <- 0
    movb    %al, -18(%ebp)         
l_f2_11:
    movzbl  -18(%ebp), %eax         #  24:     assign v2 <- t4
    movb    %al, -255181(%ebp)     

l_f2_exit:
    # epilogue
    addl    $255172, %esp           # remove locals
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
    call    dummyINTfunc            #   0:     call   t0 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    jmp     l_test_exit            
l_test_3_while_cond:
    movl    $99, %eax               #   3:     if     99 >= 99 goto 4_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_4_while_body    
    jmp     l_test_2                #   4:     goto   2
l_test_4_while_body:
    jmp     l_test_3_while_cond     #   6:     goto   3_while_cond
l_test_2:
    movl    $60384, %eax            #   8:     sub    t1 <- 60384, 82551
    movl    $82551, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   9:     assign v0 <- t1
    movl    %eax, v0               
    movl    $99766, %eax            #  10:     assign v0 <- 99766
    movl    %eax, v0               

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








    # end of global data section
    #-----------------------------------------

    .end
##################################################
