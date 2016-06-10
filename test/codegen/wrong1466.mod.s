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
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t5       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t6       <char> %ebp-22 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 12 of <array 39 of <array 63 of <array 38 of <array 93 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 65 of <array 46 of <array 47 of <array 92 of <array 20 of <bool>>>>>>> %ebp+16 ]

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
    movl    $80617, %eax            #   0:     mul    t3 <- 80617, 73221
    movl    $73221, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     div    t4 <- t3, 89708
    movl    $89708, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     assign v1 <- t4
    movl    %eax, 8(%ebp)          
    call    dummyBOOLfunc           #   3:     call   t5 <- dummyBOOLfunc
    movb    %al, -21(%ebp)         
    call    dummyCHARfunc           #   4:     call   t6 <- dummyCHARfunc
    movb    %al, -22(%ebp)         
    movzbl  -22(%ebp), %eax         #   5:     param  0 <- t6
    pushl   %eax                   
    call    WriteChar               #   6:     call   WriteChar
    addl    $4, %esp               

l_f0_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t3       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t5       <ptr(4) to <array 65 of <array 46 of <array 47 of <array 92 of <array 20 of <bool>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t6       <ptr(4) to <array 12 of <array 39 of <array 63 of <array 38 of <array 93 of <bool>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t7       <int> %ebp-28 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <int> %ebp+16 ]
    #   -104196508(%ebp)  104196480  [ $v4       <array 12 of <array 39 of <array 63 of <array 38 of <array 93 of <bool>>>>>> %ebp-104196508 ]
    #   -362771732(%ebp)  258575224  [ $v5       <array 65 of <array 46 of <array 47 of <array 92 of <array 20 of <bool>>>>>> %ebp-362771732 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $362771720, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $90692930, %ecx        
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-104196508(%ebp)     # local array 'v4': 5 dimensions
    movl    $12,-104196504(%ebp)    #   dimension 1: 12 elements
    movl    $39,-104196500(%ebp)    #   dimension 2: 39 elements
    movl    $63,-104196496(%ebp)    #   dimension 3: 63 elements
    movl    $38,-104196492(%ebp)    #   dimension 4: 38 elements
    movl    $93,-104196488(%ebp)    #   dimension 5: 93 elements
    movl    $5,-362771732(%ebp)     # local array 'v5': 5 dimensions
    movl    $65,-362771728(%ebp)    #   dimension 1: 65 elements
    movl    $46,-362771724(%ebp)    #   dimension 2: 46 elements
    movl    $47,-362771720(%ebp)    #   dimension 3: 47 elements
    movl    $92,-362771716(%ebp)    #   dimension 4: 92 elements
    movl    $20,-362771712(%ebp)    #   dimension 5: 20 elements

    # function body
    call    dummyBOOLfunc           #   0:     call   t3 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     if     t3 = 1 goto 1_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_1_if_true         
    jmp     l_f1_1_if_true          #   2:     goto   1_if_true
l_f1_1_if_true:
    jmp     l_f1_0                  #   4:     goto   0
l_f1_0:
    jmp     l_f1_7_if_false         #   6:     goto   7_if_false
    movl    $99, %eax               #   7:     if     99 >= 99 goto 9
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f1_9                 
    jmp     l_f1_10                 #   8:     goto   10
l_f1_9:
    movl    $1, %eax                #  10:     assign t4 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_11                 #  11:     goto   11
l_f1_10:
    movl    $0, %eax                #  13:     assign t4 <- 0
    movb    %al, -14(%ebp)         
l_f1_11:
    movzbl  -14(%ebp), %eax         #  15:     return t4
    jmp     l_f1_exit              
    leal    -362771732(%ebp), %eax  #  16:     &()    t5 <- v5
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  17:     param  2 <- t5
    pushl   %eax                   
    leal    -104196508(%ebp), %eax  #  18:     &()    t6 <- v4
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  19:     param  1 <- t6
    pushl   %eax                   
    movl    $36323, %eax            #  20:     param  0 <- 36323
    pushl   %eax                   
    call    f0                      #  21:     call   t7 <- f0
    addl    $12, %esp              
    movl    %eax, -28(%ebp)        
l_f1_15_while_cond:
    movl    $93431, %eax            #  23:     if     93431 <= 70050 goto 16_while_body
    movl    $70050, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_16_while_body     
    jmp     l_f1_14                 #  24:     goto   14
l_f1_16_while_body:
    jmp     l_f1_15_while_cond      #  26:     goto   15_while_cond
l_f1_14:
    jmp     l_f1_18                 #  28:     goto   18
l_f1_18:
    jmp     l_f1_5                  #  30:     goto   5
l_f1_7_if_false:
l_f1_5:
    jmp     l_f1_23_if_false        #  33:     goto   23_if_false
    jmp     l_f1_23_if_false        #  34:     goto   23_if_false
    jmp     l_f1_21                 #  35:     goto   21
l_f1_23_if_false:
l_f1_21:

l_f1_exit:
    # epilogue
    addl    $362771720, %esp        # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t3       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t5       <char> %ebp-15 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 53 of <array 91 of <array 95 of <array 74 of <array 74 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <int> %ebp+20 ]

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
    call    dummyCHARfunc           #   0:     call   t3 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     return t3
    jmp     l_f2_exit              
    call    dummyCHARfunc           #   2:     call   t4 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   3:     return t4
    jmp     l_f2_exit              
    call    dummyCHARfunc           #   4:     call   t5 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    movzbl  -15(%ebp), %eax         #   5:     return t5
    jmp     l_f2_exit              

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
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]

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
    jmp     l_test_6                #   0:     goto   6
    jmp     l_test_6                #   1:     goto   6
    jmp     l_test_1_if_true        #   2:     goto   1_if_true
l_test_6:
l_test_1_if_true:
    jmp     l_test_0                #   5:     goto   0
l_test_0:
    call    dummyCHARfunc           #   7:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $98, %eax               #   8:     assign v0 <- 98
    movb    %al, v0                
    call    dummyBOOLfunc           #   9:     call   t1 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
l_test_17_while_cond:
    jmp     l_test_16               #  11:     goto   16
    jmp     l_test_17_while_cond    #  12:     goto   17_while_cond
l_test_16:
    jmp     l_test_11               #  14:     goto   11
l_test_11:
    movl    $45368, %eax            #  16:     mul    t2 <- 45368, 56134
    movl    $56134, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  17:     assign v1 <- t2
    movl    %eax, v1               
    jmp     l_test_exit            
    movl    $1, %eax                #  19:     assign v2 <- 1
    movb    %al, v2                

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
    .align   4
v1:                                 # <int>
    .skip    4
v2:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
